class PrivateMessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @private_message = @conversation.private_messages.create(private_message_params)
    redirect_to conversation_path(@conversation, anchor: "message-#{@private_message.id}")
    ConversationChannel.broadcast_to(
      @conversation,
      render_to_string(partial: "private_message", locals: { private_message: @private_message })
    )
  end

  private

  def private_message_params
    params.require(:private_message).permit(:user_id, :content)
  end
end
