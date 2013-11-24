class UsersController < InheritedResources::Base

  def permitted_params
    params.permit(:user => [:email, :password, :password_confirmation])
  end
end
