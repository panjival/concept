class ApplicationController < ActionController::Base

# need to make signed in user available to all controllers
add_flash_types :danger, :info, :warning, :success

private
def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
end

helper_method :current_user

def authorize
    redirect_to new_session_path, alert: 'Silakan Sign in dulu!' if current_user.nil?
end
end
