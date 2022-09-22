require 'rails_helper'

RSpec.describe 'Venue Service' do
  it 'allows me to post' do
    venue_params = ({
                        name: 'The Blue Room',
                        location: 'Kansas City, Kansas',
                        phone: '8589596656',
                        price: '$',
                        category: 'Bar',
                        rating: 2,
                        user_id: 10505
                      })
                    
    expect(VenueService.new_venue(venue_params)).to be_a Hash

  end
end