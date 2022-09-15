class VenueService

  def self.artist_details(params)
    response = conn.get("/api/v1/venues/#{params[:id]}")
    status_check(response)
  end

  def status_check(response)
    JSON.parse(reponse.body, symbolize_names: true) if response.status == 200
  end
  
  private
  def self.conn
    Faraday.new(url:#TBD)
  end
end