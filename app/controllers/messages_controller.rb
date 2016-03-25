class MessagesController < ApplicationController

	def create
		binding.pry
		@message = Message.new(content: params[:message][:content], author_id: current_user.id, user_id: params[:message][:user_id])
		if @message.save
			redirect_to discution_path(params[:message][:user_id]), method: :get
		else
			render 'users#discution'
		end
	end
end
