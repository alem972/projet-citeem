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
      redirect_to user_path(params[:id])
    else
      render 'edit'
    end
  end

  def show
  end

  private

  def user_param
    params.require(:user).permit(:nickname, :birthday, :heigth)
  end

end
