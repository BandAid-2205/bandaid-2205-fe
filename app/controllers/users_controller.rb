class UsersController < ApplicationController

  def show
    user = current_user
    if user.role == 'venue'
      redirect_to '/venues/dashboard'
    elsif user.role == 'artist'
      redirect_to '/artists/dashboard'
    else
    end
  end
 
  def create
    auth_hash = request.env['omniauth.auth']
    user = User.find_or_create_by(email: auth_hash[:info][:email], name: auth_hash[:info][:name])
    session[:user_id] = user.id
    session[:user_token] = auth_hash[:credentials][:token]
    redirect_to '/roles'
  end

  def destroy
    session.destroy
    redirect_to root_path
    flash[:success] = "You've succesfully logged out."
  end


  private
  def user_params
    params.require(:user).permit(:email, :name)
  end
end