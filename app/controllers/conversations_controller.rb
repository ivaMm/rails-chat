class ConversationsController < ApplicationController
   def create
    @conversation = Conversation.get(current_user.id, params[:user_id])
    add_to_conversations unless conversated?

    redirect_to conversation_path(@conversation)
  end

  def show
    @conversation = Conversation.find(params[:id])
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
