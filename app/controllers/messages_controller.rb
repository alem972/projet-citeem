class MessagesController < ApplicationController

	def create
		@message = Message.new(content: params[:message][:content], author_id: current_user.id, user_id: params[:message][:user_id])
		if @message.save
			redirect_to discution_path(@message.user.id), method: :get
		else
			render 'users#discution'
		end
	end
end
