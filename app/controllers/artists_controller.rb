class ArtistsController < ApplicationController
  def index; end

  def new
    user = current_user
  end

  def create
    #API POST REQUEST
  end

  private

  def artist_params
    params.require(:name, :location, :bio, :genre, :image_path)
  end
end