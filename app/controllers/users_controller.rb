class UsersController < ApplicationController

  def index
    user = User.all
    render json: user.map { |user| {user: user, favorites: user.recipes} }
  end

  def show
    user = User.find(params[:id])
    render json: { user: user, favorites: user.recipes }
  end

  def create
    user = User.find_or_create_by(first_name: params[:firstName], last_name: params[:lastName], user_name: params[:userName], password: params[:password])
    render json: { user: user }
  end
end
