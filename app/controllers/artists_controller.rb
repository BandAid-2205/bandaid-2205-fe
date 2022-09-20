class ArtistsController < ApplicationController
  def index
    
  end

  def new
    data= { name: '', location: '', genre: '', bio: '' }
    @imported = Artist.new(data)
  end

  def import
    if params[:name] == nil
      flash[:error] = "Name cannot be blank"
      redirect_to '/artists/register'
    else
      # binding.pry
      @imported = ArtistFacade.artist_import(params[:name])
      render action: :new
    end
  end
end