class UsersController < ApplicationController

  def show
    user = current_user
  end
 
  def create
    auth_hash = request.env['omniauth.auth']
    user = User.find_or_create_by(email: auth_hash[:info][:email], name: auth_hash[:info][:name])
    session[:user_id] = user.id
    session[:user_token] = auth_hash[:credentials][:token]
    redirect_to '/roles'
  end


  private
  def user_params
    params.require(:user).permit(:email, :name)
  end
end