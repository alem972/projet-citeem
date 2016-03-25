class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :update_user_ping!

  def update_user_ping!
  	if current_user
  		current_user.update(last_ping_at: DateTime.now.in_time_zone)
  	end
  end

	def count_online_users
    @online_users = User.online.count
  end
end
