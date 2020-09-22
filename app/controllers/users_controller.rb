class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #authorize @user
    @chatroom = Chatroom.last
  end

  def index
    @users = User.all.order(nickname: :asc)
  end
end
