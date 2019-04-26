class SessionsController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
  end

  def create
  user = User.find_by_userid(params[:userid])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to fronts_front_path, success:
    "Selamat datang #{user.userid},"
  else
    redirect_to new_session_path, danger:
    "opps! periksa Username dan password anda"
  end
end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, info:
    "Anda Sudah Keluar"
  end
end
