class ChatroomsController < ApplicationController
  def new
    @chatroom = Chatroom.new
    @chatrooms = Chatroom.all
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @chatrooms = Chatroom.all.order(created_at: :desc)
    @users = User.all
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
