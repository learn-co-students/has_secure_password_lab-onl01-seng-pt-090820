class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to home_path
    else
      redirect_to login_path
    end
  end
 
  private
 
  def user_params
    params.require(:user).permit(:user, :password, :password_confirmation)
  end

end