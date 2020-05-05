class UsersController < ApplicationController

  def index
    user = User.all
    render json: user.to_json()
  end

  def show
    user = User.find(params[:id])
    render json: user.to_json()
  end

  def create
    byebug
  end
end
