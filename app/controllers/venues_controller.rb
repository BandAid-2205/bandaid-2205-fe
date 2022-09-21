class VenuesController < ApplicationController
  def index; end

  def new
    @user = current_user
  end

  def show
    user = current_user
    # @venue = VenueFacade.find_venue(user.id)
  end

  def create
    
  end

  private
  def venue_params
    params.permit(:name, :location, :phone, :price, :category, :rating, :user_id)
  end
end