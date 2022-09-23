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
    expect(artist.bookings).to be_an Array
    expect(artist.bookings.count).to eq 2
    artist.bookings.each do |booking|
      expect(booking).to be_a Hash
      expect(booking[:id]).to be_an Integer
      expect(booking[:venue_name]).to be_a String
      expect(booking[:booking_status]).to be_an Integer
    end
    expect(artist.bookings[0][:venue_name]).to eq('Trilly Cheesesteaks')
    expect(artist.bookings[0][:booking_status]).to eq 1
    expect(artist.bookings[1][:venue_name]).to eq('Legros-Macejkovic')
    expect(artist.bookings[1][:booking_status]).to eq 1
  end

  it 'can return an Artist object with artist_import' do
    artist = ArtistFacade.artist_import('Annie Lennox')

    expect(artist).to be_a Artist
    expect(artist.name).to eq('Annie Lennox')
    expect(artist.location).to eq(nil)
    expect(artist.genre).to eq('female vocalists')
    expect(artist.bio).to include('Annie Lennox is an Oscar')
    expect(artist.image_path).to be_a String
    expect(artist.bookings).to eq nil
    expect(artist.venues).to eq nil
    expect(artist.venue_artists).to eq nil
  end
end
