class WelcomeController < ApplicationController
  def welcome
    if !session[:user_id].blank?
      @user = User.find_by(id: session[:user_id])
    end
  end
end
