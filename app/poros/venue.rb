class Venue
  
  attr_reader :name, :city, :state, :address, :zip_code
  def initialize(data)
    @name = data[:name]
    @city = data[:city]
    @state = data[:state]
    @address = data[:address1]
    @zip_code = data[:zip_code]
  end
end