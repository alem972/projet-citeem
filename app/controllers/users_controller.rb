class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def discution
  	@user = User.find(params[:id])
  	@messages = Message.where(author_id: params[:id], user_id: current_user.id)
  	@messages += Message.where(author_id: current_user.id, user_id: params[:id])
  	@messages.sort_by!{|e| e[:update_at]}
  	# binding.pry
  	@message = Message.new(user_id: @user.id)
  end

end
