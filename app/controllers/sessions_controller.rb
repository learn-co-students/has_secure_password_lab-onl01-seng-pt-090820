class SessionsController < ApplicationController
  
  def new
  end


  def create
    user = User.find_by(name: params[:name])
    authenticated = user.try(:authenticate, params[:password])
    return head(:forbidden) unless authenticated
    @user = user
    @session[:user_id] = @user.id
    render root_path
  end


  def destroy
    session.delete :name
    redirect_to login_path
  end

end