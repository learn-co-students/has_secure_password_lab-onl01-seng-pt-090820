class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        if @user = User.new(user_params)
            if @user.password == @user.password_confirmation
                @user.save
                session[:user_id] = @user.id

                render :show
            else
                redirect_to "/users/new"
            end
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end


    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
