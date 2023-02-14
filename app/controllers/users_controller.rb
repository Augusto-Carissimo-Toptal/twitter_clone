class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new()
  end

  def edit
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :handle))
    if @user.save
      flash[:notice] = "User created!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    if @user.update(params.require(:user).permit(:name, :handle))
      flash[:notice] = "User edited!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end