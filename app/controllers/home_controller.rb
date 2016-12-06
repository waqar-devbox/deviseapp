class HomeController < ApplicationController
  #before_action :authenticate_user!
  def index
  	if user_signed_in?
  		NewUserEmail.notify_user(current_user).deliver_now
  		#abort(current_user.email)
  		redirect_to posts_path
  	else
  		redirect_to new_user_session_path
  	end
  end
end
