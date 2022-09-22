class ArtistFacade

  def self.artist_details(user_id)
    parsed_json = ArtistService.artist_details(user_id)
    Artist.new(parsed_json[:data][:attributes])
  end
  
  def self.artist_import(name)
    parsed_json = ArtistService.artist_import(name)
    # binding.pry
    Artist.new(parsed_json[:data][:attributes])
  end
end