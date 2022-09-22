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
  it 'artist_create method adds an artist to BE db, and returns a hash of info', :vcr do
    data = { user_id: 1000002, name: 'Some Band', location:'PDXOR', genre: 'funk', bio: 'my bio'}
    response = ArtistService.artist_create(data)
    parsed = response[:data][:attributes]
    
    expect(parsed).to be_a Hash
    expect(parsed[:user_id]).to eq(1000002)
    expect(parsed[:name]).to eq('Some Band')
    expect(parsed[:location]).to eq('PDXOR')
    expect(parsed[:genre]).to eq('funk')
    expect(parsed[:bio]).to eq('my bio')
    expect(parsed[:image_path]).to eq(nil)
  end
end