class Artist
  attr_reader :name, :location, :genre, :bio, :image_path
  
  def initialize(data)
    @name = data[:name]
    @location = data[:location]
    @phone = data[:phone]
    @genre = data[:genre]
    @bio = data[:bio]
    @image_path = data[:image_path]
  end
end