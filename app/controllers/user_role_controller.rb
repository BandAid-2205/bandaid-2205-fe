class UserRoleController < ApplicationController
  def update
    user = current_user
    user.update(user_role_params)
    if user.role == 1
      redirect_to '/artist/register'
    elsif user.role == 2
      redirect_to '/venue/register'
    end
  end

  private
  def user_role_params
    params.permit(:role)
  end
end