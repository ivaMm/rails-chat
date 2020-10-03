class PrivateMessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @private_message = PrivateMessage.create(private_message_params)
    @private_message.conversation = @conversation
    @private_message.user = current_user

    if @private_message.save
      ConversationChannel.broadcast_to(
        @conversation,
        render_to_string(partial: "private_message", locals: { private_message: @private_message })
      )
    else
      render "conversations/show"
    end
  end

  private

  def private_message_params
    params.require(:private_message).permit(:content)
  end
end
