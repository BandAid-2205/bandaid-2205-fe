require 'rails_helper'

RSpec.describe Artist do
  it 'exists' do
    data = {name: 'Jay-Z', location: 'Brooklyn, NY', genre: 'rap', image_path: '/assets/test/image.png'}

    artist = Artist.new(data)
    expect(artist.name).to eq('Jay-Z')
    expect(artist.location).to eq('Brooklyn, NY')
    expect(artist.genre).to eq('rap')
    expect(artist.image_path).to eq('/assets/test/image.png')
  end
end