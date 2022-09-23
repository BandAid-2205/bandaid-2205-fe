class ArtistService

  def self.artist_details(user_id)
    response = conn.get("/api/v1/artists/#{user_id}")
    status_check(response)
  end

  def self.artist_import(name)
    response = conn.get("/api/v1/lastfm/search?query=#{name}")
    status_check(response)
  end

  def self.artist_create(artist_params)
    response = conn.post("/api/v1/artists", {
      name: artist_params[:name],
      location: artist_params[:location],
      genre: artist_params[:genre],
      bio: artist_params[:bio],
      image_path: artist_params[:image_path],
      user_id: artist_params[:user_id],
      bookings: artist_params[:bookings],
      artists: artist_params[:artists],
      venue_artists: artist_params[:venue_artists]
    }.to_json, "Content-Type" => "application/json")
    status_check(response)
  end

  def self.artist_delete(artist_id)
    #returns 204 no content if successful
    response = conn.delete("/api/v1/artists/#{artist_id}")
  end

  def self.status_check(response)
    JSON.parse(response.body, symbolize_names: true) if response.status == 200
  end

  private 

  def self.conn
    Faraday.new(url: "https://bandaid-be.herokuapp.com")
  end
end
