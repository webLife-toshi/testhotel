class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:show, :edit, :update]
  before_filter :correct_user,   only: [:show, :edit, :update]
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Signed In!"
      redirect_to @user
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def signed_in_user
     unless signed_in?
       store_location
       redirect_to log_in_url, notice: "Please sign in."
     end
  end

  def correct_user
     @user = User.find(params[:id])
     redirect_to(log_in_path) unless current_user?(@user) 
  end
end
