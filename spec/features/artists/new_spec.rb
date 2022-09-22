require 'rails_helper'

RSpec.describe 'Artists#new' do
  it 'has a form with name, location, phone, genre and bio' do
    visit "/artists/register"

    expect(page).to have_content('Name:')
    expect(page).to have_content('Genre:')
    expect(page).to have_content('Location:')
    expect(page).to have_content('Tell me about yourself:')
  end
  it 'clicking import from last_fm will autofill the form from an api call' do
    # Can't test for bio due to the length of the returned string including double quotes
    visit "/artists/register"

    within('#artist-import') do
      fill_in :name, with: 'Annie Lennox'
      click_on "Import from Last.fm"
    end
    
    within('#artist-form') do
      expect(page).to have_field('Name', with: 'Annie Lennox')
      expect(page).to have_field('Genre', with: 'female vocalists')
      expect(find_field(:bio).value.blank?).to eq(false)
    end
    
    

    
  end
end