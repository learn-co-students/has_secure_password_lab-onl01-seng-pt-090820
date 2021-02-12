class UsersController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.create(user_params)
        redirect_to :controller => 'users', :action => 'new' unless params[:user][:password] == params[:user][:password_confirmation]
        session[:user_id] = @user.id
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end