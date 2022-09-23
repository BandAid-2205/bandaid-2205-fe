class Venue

  attr_reader :name, 
              :location, 
              :phone, 
              :price, 
              :category, 
              :rating, 
              :user_id,
              :bookings,
              :artists,
              :venue_artists

  def initialize(data)
    @name = data[:name]
    @location = data[:location]
    @phone = data[:phone]
    @price = data[:price]
    @category = data[:category]
    @rating = data[:rating]
    @user_id = data[:user_id]
    @bookings = data[:bookings]
    @artists = data[:artists]
    @venue_artists = data[:venue_artists]
  end
end
