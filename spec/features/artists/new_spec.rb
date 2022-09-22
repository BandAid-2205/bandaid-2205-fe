require 'rails_helper'

RSpec.describe 'Artists#new' do
  before(:each) do
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
                                                                           :provider => 'google',
                                                                           :uid => '123545',
                                                                           :info => {
                                                                             :email => 'me@me.com',
                                                                             :name => 'Bono'
                                                                           },
                                                                           :credentials => {
                                                                             :token => '555'
                                                                           }
                                                                         })
      visit '/auth/google_oauth2'
  end
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
  it 'creates a new artist when complete registration is clicked' do
    visit artists_register_path

    within('#artist-form') do
      fill_in :name, with: 'My Band'
      fill_in :location, with: '123 Street'
      fill_in :genre, with: 'rock'
      fill_in :bio, with: 'music stuff'
      click_on 'Complete Registration'  
    end
    save_and_open_page
    expect(page).to have_content('Registration complete!')
    expect(current_path).to eq(artist_path(session[:user_id]))
  end
end