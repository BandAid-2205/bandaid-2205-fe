class VenueService

  def self.venue_details(user_id)
    response = conn.get("/api/v1/venues/#{user_id}")
    status_check(response)
  end

  def self.new_venue(venue_params)
    response = conn.post("/api/v1/venues", {
      name: venue_params[:name],
      location: venue_params[:location],
      phone: venue_params[:phone],
      price: venue_params[:price],
      category: venue_params[:category],
      rating: venue_params[:rating],
      user_id: venue_params[:user_id]
    }.to_json, "Content-Type" => "application/json")   
    status_check(response)
  end

  def self.update_venue(user_id, venue_params)
    response = conn.patch("/api/v1/venues/#{user_id}", {
      name: venue_params[:name],
      location: venue_params[:location],
      phone: venue_params[:phone],
      price: venue_params[:price],
      category: venue_params[:category],
      rating: venue_params[:rating],
      user_id: venue_params[:user_id]
    }.to_json, "Content-Type" => "application/json")
    status_check(response)
  end

  def self.status_check(response)
    JSON.parse(response.body, symbolize_names: true) 
  end
  
  private
  def self.conn
    Faraday.new(url: "https://bandaid-be.herokuapp.com")
  end
end