class UsersController < ApplicationController
  def new
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)    
  end
end
