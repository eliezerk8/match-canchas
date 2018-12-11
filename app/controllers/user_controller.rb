class UserController < ApplicationController
  def show
    @user= User.find(params[:id])
  end

  def new

    @user= User.new

  end

  def create
    @user= User.new(nombreuser: params[:user][:nombreuser])
    @user.save
    redirect_to @user
  end
end
