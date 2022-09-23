require 'rails_helper'

RSpec.describe Venue do
  it 'exists' do
    data =  {
        name: "Four Barrel Coffee",
        location: '375 Valencia St  San Francisco, CA 94103',
        phone: "(415) 896-4289",
        price: "$$",
        category: "Coffee&Tea",
        rating: "4",

      }

    venue = Venue.new(data)
    expect(venue.name).to eq('Four Barrel Coffee')
    expect(venue.location).to eq('375 Valencia St  San Francisco, CA 94103')
  end
end
