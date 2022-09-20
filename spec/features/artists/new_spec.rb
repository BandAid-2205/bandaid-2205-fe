require 'rails_helper'

RSpec.describe 'Artists#new' do
  it 'has a form with name, location, phone, genre and bio' do
    visit "/artists/register"

    expect(page).to have_content('Name:')
    expect(page).to have_content('Genre:')
    expect(page).to have_content('Location:')
    expect(page).to have_content('Tell me about yourself:')
  end
  it 'clicking import from last_fm will autofill the form' do
    visit "/artists/register"
    click_on "Import from Last.fm"
    expect(page).to have_field('Name', with: 'bob')
    expect(page).to have_field('Genre', with: 'good')
    expect(page).to have_field('Location', with: '1234')
    expect(page).to have_field('Tell me about yourself', with: 'asdfg')

  end
end