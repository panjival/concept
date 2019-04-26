class UsersController < ApplicationController
before_action :authorize
def index
end

def new
    @user = User.new
end

def create
@user= User.new(user_params)
if @user.save
    session[:user_id] = @user.id
    redirect_to root_path, success: "Selamat Datang #{@user.userid}!"
else
    render 'new'
    end
end

private
def user_params
    params.require(:user).permit(:userid, :email, :password, :password_confirmation)
end
end
