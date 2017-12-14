class ApplicationController < ApplicationController::Base
protect_from_forgery

before_action :authorize

private
def current_user
if session[:user_id]
	User.find_by(id: session[:user_id])
end
end
helper_method :current_user
end

