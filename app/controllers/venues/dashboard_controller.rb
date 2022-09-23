class Venues::DashboardController < ApplicationController
  def index
    user = current_user
    @venue = VenueFacade.find_venue(user.id)
  end
end