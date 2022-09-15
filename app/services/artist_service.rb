class ArtistService

  def self.artist_details(user)
    response = conn.get("/users/#{user.id}")
    status_check(response)
  end

  def status_check(response)
    JSON.parse(reponse.body, symbolize_names: true) if response.status == 200
  end

  def self.conn
    Faraday.new(url:#TBD)
  end
end