class VenuesController < ApplicationController
  def index; end

  def show
    user = current_user
    @venue = VenueFacade.find_venue(user.user_id)
  end

  def new
    @user = current_user
  end

  def create
    VenueService.new_venue(venue_params)
  end

  private
  def venue_params
    params.permit(:name, :location, :phone, :price, :category, :rating, :user_id)
  end
end
