class VenuesController < ApplicationController
  def index; end

  def show
    user = current_user
    @venue = VenueFacade.find_venue(user.id)
  end

  def new
    @user = current_user
  end

  def create
    VenueService.new_venue(venue_params)
    redirect_to '/venues/dashboard'
  end

  def edit
    @user = current_user
  end

  def update
    user = current_user
    VenueService.update_venue(user.id, venue_params)
    redirect_to '/venues/dashboard'
  end

  private
  def venue_params
    params.permit(:name, :location, :phone, :price, :category, :rating, :user_id)
  end
end