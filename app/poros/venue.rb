class Venue
  attr_reader :name, :location, :phone, :price, :category, :rating
  def initialize(data)
    @name = data[:name]
    @location = data[:location]
    @phone = data[:phone]
    @price = data[:price]
    @category = data[:category]
    @rating = data[:rating]
  end
end