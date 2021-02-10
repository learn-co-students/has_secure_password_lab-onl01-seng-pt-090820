require 'pry'

class UsersController < ApplicationController

    def new
    end

    def create
        if params[:user][:name] == "" || params[:user][:password] == "" 
            redirect_to new_user_path  
        elsif
            #binding.pry
            params[:user][:password] != params[:user][:password_confirmation] 
            redirect_to new_user_path
        else
            user = User.create(name: user_params[:name], password: user_params[:password])
                session[:user_id] = user.id
                redirect_to '/login'
        end
    end

    private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
