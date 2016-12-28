class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit
    set_user
  end

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    render 'index'
  end

  private
  def user_params
    params.require(:user).permit(:name, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
