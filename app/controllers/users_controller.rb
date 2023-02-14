class UsersController < ApplicationController
  def show
    set_user
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new()
  end

  def edit
    set_user
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
    set_user
    if @user.update(params.require(:user).permit(:name, :handle))
      flash[:notice] = "User edited!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    set_user
    @user.destroy
    redirect_to users_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end