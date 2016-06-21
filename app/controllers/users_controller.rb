class UsersController < ApplicationController

  def new
  end

  def login
    user = User.find_by(email: params[:email])
    redirect_to "/users/#{user.id}"
  end

  def create
    u = User.create!(email: params[:email], name: params[:username])
    redirect_to "/users/#{u.id}"
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id].to_i)
  end

  def update
    u = User.find(params[:id].to_i)
    u.name = params[:username]
    u.email = params[:email]
    u.save!
    redirect_to "/users/#{u.id}"
  end

  def show
    @user = User.find(params[:id].to_i)
  end

  def destroy

  end


end
