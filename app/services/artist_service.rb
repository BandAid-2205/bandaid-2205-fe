class ArtistService

  def self.artist_details(user_id)
    response = conn.get("/api/v1/artists/#{user_id}")
    status_check(response)
  end

  def self.artist_import(name)
    response = conn.get("/api/v1/lastfm/search?query=#{name}")
    status_check(response)
  end

  def self.status_check(response)
    JSON.parse(response.body, symbolize_names: true) if response.status == 200
  end

  private 
  def self.conn
    Faraday.new(url: "https://bandaid-be.herokuapp.com")
  end
end