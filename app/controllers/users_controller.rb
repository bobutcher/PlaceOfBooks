class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to action: "index"
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to action: "show", id: @user.id
  end

  def create
    @user = User.create(user_params)
    redirect_to action: "show", id: @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
