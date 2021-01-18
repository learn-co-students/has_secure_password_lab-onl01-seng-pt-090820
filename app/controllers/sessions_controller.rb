class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        # return head(:forbidden) unless params[:password] == @user.password
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to :welcome 
        else
            flash[:notice] ="Login is incorrect"
            redirect_to :login
        end
    end
end