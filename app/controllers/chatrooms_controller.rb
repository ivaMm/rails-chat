class ChatroomsController < ApplicationController
  def new
    @chatroom = Chatroom.new
    @chatrooms = Chatroom.all.order(created_at: :desc)
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
  end

  def show
    if params[:query].present?
      @query = params[:query]
      @chatrooms = Chatroom.all.order(created_at: :desc)
      @users = User.all
      @messages = Message.order(created_at: :desc).search_by_content(@query)
    end
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
