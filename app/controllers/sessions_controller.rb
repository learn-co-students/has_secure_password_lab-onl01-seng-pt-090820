class SessionsController < ApplicationController
  def login
    if !session[:user_id].blank?
      redirect_to welcome_path
    end
    @user = User.new
  end

  def create
    if user = User.find_by(name: params[:user][:name])
      if user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect_to welcome_path
      else
        redirect_to login_path, alert: "Wrong password."
      end
    else
      redirect_to login_path, alert: "User not found."
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
