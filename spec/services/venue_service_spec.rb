require 'rails_helper'

RSpec.describe 'Venue Service' do
  it 'allows me to post' do
    venue_params = ({
                        name: 'The Blue Room',
                        location: '1600 E 18th St Kansas City, MO 64108',
                        phone: '(816) 474-2929',
                        price: '$$',
                        category: 'Jazz&Blues',
                        rating: 4,
                        user_id: 10910
                      })

    response = VenueService.new_venue(venue_params)
    parsed = response[:data][:attributes]

    expect(parsed).to be_a Hash
    expect(parsed).to have_key(:name)
    expect(parsed[:name]).to eq('The Blue Room')
    expect(parsed).to have_key(:location)
    expect(parsed[:location]).to eq('1600 E 18th St Kansas City, MO 64108')
    expect(parsed).to have_key(:phone)
    expect(parsed[:phone]).to eq('(816) 474-2929')
    expect(parsed).to have_key(:price)
    expect(parsed[:price]).to eq('$$')
    expect(parsed).to have_key(:category)
    expect(parsed[:category]).to eq('Jazz&Blues')
    expect(parsed).to have_key(:rating)
    expect(parsed[:rating]).to eq(4)
    expect(parsed).to have_key(:user_id)
    expect(parsed[:user_id]).to eq(10910)
    expect(parsed[:bookings]).to eq []
    expect(parsed[:venues]).to eq nil
    expect(parsed[:venue_artists]).to eq []
  end
end
