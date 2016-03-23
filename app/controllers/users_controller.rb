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
    #binding.pry
    # @users_connected = User.where(:current_sign_in_at > :last_sign_in_at)
    # @connect = count_connect
    @online_users = User.online

  end

  private

  def user_param
    params.require(:user).permit(:nickname, :birthday, :heigth)
  end

end


# def ping
#     #connect to db and return db name 
#     config = Rails.configuration.database_configuration[Rails.env]
#     puts config
#     puts config["adapter"]
#     puts config["database"]
#     connection = ActiveRecord::Base.establish_connection adapter: config["adapter"], database: config["database"]
#     puts connection.with_connection
#     render :json => {'status' => 'ok'} #along with dbname....
#   end
