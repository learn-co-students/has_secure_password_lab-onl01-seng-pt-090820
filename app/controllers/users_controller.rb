class UsersController < ApplicationController
  before_action :require_login, only: [:home]

  def new
    @user = user.new
  end

  def create
    user = User.new(user_params)

    if user.save
        session[:user_id] = user.id
        redirect_to root_path
    else
        redirect_to new_user_path
    end
  end

  def home
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def require_login
    redirect_to login_path unless !!session[:user_id]
  end
end
