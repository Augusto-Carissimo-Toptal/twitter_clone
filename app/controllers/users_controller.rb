class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @new_user = User.new()
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :handle))
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end