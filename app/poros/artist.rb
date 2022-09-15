class Artist
  attr_reader :name, :city
  
  def initialize(data)
    @name = data[:name]
    @city = data[:city]
  end
end