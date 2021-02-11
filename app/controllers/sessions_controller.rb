class SessionController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by(name: params[:name], password: params[:password]  )
  
    session[:user_id] = @user.id
    redirect_to :home
  end

    
  def destroy
    session.delete :name
    redirect_to :login
  end

end