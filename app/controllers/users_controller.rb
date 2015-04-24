class UsersController < ApplicationController
  # authenticate_user es un metodo de device
  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def create
    @user = User.new(safe_params)
    @user.save
    redirect_to new_user_path
  end

  def index
    @users = User.all 
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  # Parametros permitidos
  def safe_params
    params.require(:user).permit(:email, :password, :role)
  end
end
