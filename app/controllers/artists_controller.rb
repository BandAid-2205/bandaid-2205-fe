class ArtistsController < ApplicationController
  def index; end

  def show
    # binding.pry
    @artist = ArtistFacade.artist_details(params[:id])
  end

  def new
    data = { name: '', location: '', genre: '', bio: '', image_path: '/assets/images/no_image_icon.png' }
    @imported = Artist.new(data)
  end

  def import
    if params[:name].nil?
      flash[:error] = 'Name cannot be blank'
      redirect_to '/artists/register'
    else
      @imported = ArtistFacade.artist_import(params[:name])
      render action: :new
    end
  end

  def create
    response = ArtistService.artist_create(artist_params)
    if !response.nil?
      flash[:success] = 'Registration Complete!'
      # binding.pry
      redirect_to artist_path(params[:user_id])
    else
      flash[:error] = response
    end
  end

  private

  def artist_params
    params.permit(:user_id, :name, :location, :genre, :bio, :image_path)
  end
end
