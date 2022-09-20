class UsersController < ApplicationController

  def show
    user = current_user
  end
 
  def create
    auth_hash = request.env['omniauth.auth']
    user = User.find_or_create_by(email: auth_hash[:info][:email], uid: auth_hash[:uid], token: auth_hash[:credentials][:token])
    session[:user_id] = user.id
    redirect_to '/roles'
  end

  private
  def user_params
    params.require(:user).permit(:email, :uid, :token)
  end
end