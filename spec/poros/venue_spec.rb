require 'rails_helper'

RSpec.describe Venue do
  it 'exists' do
    data =  {"city": "San Francisco",
        "country": "US",
        "address2": "",
        "address3": "",
        "state": "CA",
        "address1": "375 Valencia St",
        "zip_code": "94103",
        "name": "Four Barrel Coffee"}

    expect(Venue.new(data).city).to eq('San Francisco')
    expect(Venue.new(data).state).to eq('CA')
    expect(Venue.new(data).address).to eq('375 Valencia St')
    expect(Venue.new(data).zip_code).to eq('94103')
    expect(Venue.new(data).name).to eq('Four Barrel Coffee')
  end
  
end