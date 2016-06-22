class MicropostsController < ApplicationController

  def create
    user = User.find_by(name: params[:name])
    Micropost.create!(content: params[:content], user_id: user.id)
    redirect_to "/microposts/users/#{user.id}"
  end

  def index
    if params[:name]
      u = User.find_by(name: params[:name])
      redirect_to "/microposts/users/#{u.id}"
    else
      @posts = Micropost.all
    end
  end

  def destroy

  end

  def new

  end

  def show
    @user = User.find(params[:id].to_i)
    @posts = @user.microposts
  end

end
