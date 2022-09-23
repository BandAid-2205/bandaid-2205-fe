require 'rails_helper'

RSpec.describe 'Venue Facade' do
  it 'can find and return details of a venue' do
    venue = VenueFacade.find_venue(10910)

    expect(venue).to be_a Venue
    expect(venue.name).to eq('The Blue Room')
    expect(venue.location).to eq('1600 E 18th St Kansas City, MO 64108')
    expect(venue.phone).to eq('(816) 474-2929')
    expect(venue.price).to eq('$$')
    expect(venue.category).to eq('Jazz&Blues')
    expect(venue.rating).to eq(4)
    expect(venue.user_id).to eq(10910)
    expect(venue.artists).to eq []
    expect(venue.bookings).to eq []
    expect(venue.venue_artists).to eq []
  end
end
