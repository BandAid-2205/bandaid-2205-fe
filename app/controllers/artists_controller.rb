class ArtistsController < ApplicationController
  def index
    
  end

  def new
    @imported = {
      name: '',
      location: '',
      genre: '',
      bio: ''
    }
  end

  def import
    @imported = {
      name: 'bob',
      location: '1234',
      genre: 'good',
      bio: 'asdfg'
    }
    render action: :new
  end
end