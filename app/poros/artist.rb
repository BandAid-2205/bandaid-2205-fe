class Artist
  attr_reader :name, :location, :genre, :bio, :image_path, :bookings, :venues, :venue_artists
  
  def initialize(data)
    @name = data[:name]
    @location = data[:location]
    @genre = data[:genre]
    @bio = data[:bio]
    @image_path = data[:image_path]
    @bookings = data[:bookings]
    @venues = data[:venues]
    @venue_artists = data[:venue_artists]
  end
end