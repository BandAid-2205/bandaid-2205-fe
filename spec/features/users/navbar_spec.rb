require 'rails_helper'

RSpec.describe 'Nav Bar' do
  it 'has a link on each page to Home' do
    visit root_path

    expect(page).to have_link('Home')
    click_on 'Home'
    expect(current_path).to eq(root_path)
  end
end