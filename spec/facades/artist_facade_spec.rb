require 'rails_helper'

RSpec.describe 'Artist Facade' do
  it 'can return an Artist object with artist_details' do
    artist = ArtistFacade.artist_details(1000)

    expect(artist).to be_a Artist
    expect(artist.name).to eq('TV Pole Shine')
    expect(artist.location).to eq("New Orleans, LA")
    expect(artist.genre).to eq('funk')
    expect(artist.bio).to be_a String
    expect(artist.image_path).to be_a String
  end

  it 'can return an Artist object with artist_import' do
    artist = ArtistFacade.artist_import('Annie Lennox')

    expect(artist).to be_a Artist
    expect(artist.name).to eq('Annie Lennox')
    expect(artist.location).to eq(nil)
    expect(artist.genre).to eq('female vocalists')
    expect(artist.bio).to include('Annie Lennox is an Oscar')
    expect(artist.image_path).to be_a String
  end
end