class VenueFacade
  
  def self.find_venue(user_id)
    parsed_json = ArtistService.venue_details(user_id)
    Venue.new(parsed_json[:data][:attributes])
  end

  def self.create_venue(venue_params)
    
  end
end