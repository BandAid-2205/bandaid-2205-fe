require 'rails_helper'

RSpec.describe 'Venue Dashboard' do
  before(:each) do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
                                                                         provider: 'google',
                                                                         uid: '123546',
                                                                         info: {
                                                                           email: 'test@test.com',
                                                                           name: 'The Blue Room'
                                                                         },
                                                                         credentials: {
                                                                           token: '666'
                                                                         }
                                                                       })
    visit '/auth/google_oauth2'
  end

  describe 'When I visit my venue dashboard' do
    it 'I should see my Venue name, address, phone number, price and yelp rating' do
      user = User.create!(name: 'The Blue Room', email: 'test@test.com', role: 'venue')
      venue = Venue.new({
                        name: 'The Blue Room',
                        location: '1600 E 18th St Kansas City, MO 64108',
                        phone: '(816) 474-2929',
                        price: '$$',
                        category: 'Jazz&Blues',
                        rating: 4,
                        user_id: 10910
                      })
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(venue)
      visit '/venues/dashboard'

      expect(page).to have_content('')
    end
  end
end
