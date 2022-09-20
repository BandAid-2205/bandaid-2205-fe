class UserRoleController < ApplicationController
  def update
    user = current_user
    user.update(user_role_params)
    if user.role == 'artist'
      redirect_to '/artists/register'
    elsif user.role == 'venue'
      redirect_to '/venues/register'
    end
  end

  private
  def user_role_params
    params.permit(:role)
  end
end