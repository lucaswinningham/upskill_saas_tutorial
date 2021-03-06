class UsersController < ApplicationController
  before_action :authenticate_user!
  
  # GET to /users/:id
  def show
    @user = User.find(params[:id])
  end
  
  # GET to /users
  def index
    @users = User.all.includes(:profile)
  end
end