class UsersController < ApplicationController

  def index
    user = User.all
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: { user: user, favorites: user.recipes }
  end

  def create
    user = User.find_or_create_by( username: params[:username], password: params[:password])
    render json: { user: user,  favorites: user.recipes }
  end

  def login
    user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
    render json: { user: user, favorites: user.recipes,
    successful: true
    # user: user,
    # token: encode("id": user.id)
  }
   else
  render json: { message: "Incorrect username or password",
  successful: false
}
   end
end
end
