class VenueFacade

  def self.find_venue(user_id)
    parsed_json = VenueService.venue_details(user_id)
    Venue.new(parsed_json[:data][:attributes])
  end
end
