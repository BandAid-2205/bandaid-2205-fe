class VenueArtistService
  def self.venue_artist_details(artist_id, venue_id)
    response = conn.get("/api/v1/venues")
  end
  private
  def self.conn
    Faraday.new(url: "https://bandaid-be.herokuapp.com")
  end
end