require 'rails_helper'

RSpec.describe 'Venue Dashboard' do
  describe 'When I visit my venue dashboard' do
    it 'I should see my Venue name, address, phone number, price and yelp rating' do
      user = User.create!(name: 'tester', email: 'test@test.com', role: 'venue')

      visit '/venues/dashboard'

      expect(page).to have_content('')
    end
  end
end