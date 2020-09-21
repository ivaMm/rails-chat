class MessagesController < ApplicationController
  def index
    if params[:query].present?
      @query = params[:query]
      @chatrooms = Chatroom.all
      @users = User.all
      @messages = Message.order(created_at: :desc).search_by_content(@query)
    end
  end

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(@chatroom, render_to_string(partial: "message", locals: { message: @message }))
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
