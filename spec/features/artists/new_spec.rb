require 'rails_helper'

RSpec.describe 'Artists#new' do
  it 'has a form with name, location, phone, genre and bio' do
    visit "/artists/register"

    expect(page).to have_content('Name:')
    expect(page).to have_content('Genre:')
    expect(page).to have_content('Location:')
    expect(page).to have_content('Tell me about yourself:')
  end
end