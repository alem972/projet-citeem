class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    @titre = "Édition profil"
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_param)
      redirect_to edit_user_path(params[:id])
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def dashbord
    @users = User.all
    
    tab = []
    (0..@users.length-1).each do |num|
      tab << num
    end

    @users_rdm = []
    (1..5).each do |e|
      rdm = Random.new.rand(0..tab.length-1)
      @users_rdm << @users[tab[rdm]]
      tab.delete_at(rdm)
    end

    @online_users = User.online
  end

  def discution
  	@user = User.find(params[:id])
  	@messages = Message.where(author_id: params[:id], user_id: current_user.id)
  	@messages += Message.where(author_id: current_user.id, user_id: params[:id])
  	@messages.sort_by!{|e| e[:updated_at]}
  	
  	@message = Message.new(user_id: @user.id)
  end

  private

  def user_param
    params.require(:user).permit(:nickname, :birthday, :heigth)
  end

end
