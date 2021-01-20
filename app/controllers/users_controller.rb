class UsersController < ApplicationController

    
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            redirect_to controller: 'welcome', action: 'home'
        else
            redirect_to new_user_path
        end
        session[:user_id] = @user.id
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
