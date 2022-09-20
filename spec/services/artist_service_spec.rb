require 'rails_helper'

RSpec.describe 'Artist Service' do
  it 'can retrieve an artist from database by user id', :vcr do
    # input --> artist user_id
    # output --> parsed json
    parsed_json = ArtistService.artist_details(1000)

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:data][:type]).to eq('artist')

    artist = parsed_json[:data][:attributes]

    expect(artist[:name]).to be_a String
    expect(artist[:name]).to eq('Annie Lennox')
  end
  it 'can retrieve artist lastfm info and parse response', :vcr do
    # input --> name string
    # output --> parsed json
    parsed_json = ArtistService.artist_import("Annie Lennox")

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:data][:type]).to eq('artist_poro')

    artist = parsed_json[:data][:attributes]

    expect(artist[:name]).to be_a String
    expect(artist[:name]).to eq('Annie Lennox')
  end
end