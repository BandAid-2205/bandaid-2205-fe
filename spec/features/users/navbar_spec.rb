require 'rails_helper'

RSpec.describe 'Nav Bar' do
  it 'has a button on each page to Home' do
    visit root_path

    expect(page).to have_button('Home')
    click_on 'Home'
    expect(current_path).to eq(root_path)
  end
  it 'has a button on each page to Discover Venues' do
    visit root_path

    expect(page).to have_button('Discover Venues')
  end
end