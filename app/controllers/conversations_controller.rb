class ConversationsController < ApplicationController
  def create
    @conversation = Conversation.get(current_user.id, params[:user_id])
    add_to_conversations unless conversated?

    redirect_to conversation_path(@conversation)
  end

  def show
     if params[:query].present?
      @query = params[:query]
      @chatrooms = Chatroom.all.order(created_at: :desc)
      @users = User.all.where.not(id: current_user.id)
      @messages = Message.order(created_at: :desc).search_by_content(@query)
      @private_messages = PrivateMessage.includes(current_user).search_by_content(@query)
    end
    @chatroom = Chatroom.last
    @conversation = Conversation.find(params[:id])
    @private_message = PrivateMessage.new
    @chatrooms = Chatroom.all.order(created_at: :desc)
    @users = User.all.where.not(id: current_user.id)
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    @conversations = Conversation.all
    @conversations.include?(@conversation.id)
  end
end
