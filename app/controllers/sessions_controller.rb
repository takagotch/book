class SessionsController < ApplicationController
def create
user = User.authenticate(params[:name], params[:password])
if user
	session[:user_id] = user.id
else
	flash.alert = 'Not match name&&pass'
end
redirect_to :root
end

end

