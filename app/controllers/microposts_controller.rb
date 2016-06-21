class MicropostsController < ApplicationController

  def create
    Micropost.create!(content: params[:content], user_id: params[:user_id].to_i)
    redirect_to "/microposts/users/#{params[:user_id]}"
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

  def show
    @user = User.find(params[:id].to_i)
    @posts = @user.microposts
  end

end
