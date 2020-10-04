import consumer from "./consumer";

const initConversationCable = () => {
  const privateMessagesContainer = document.getElementById('private-messages');
  if (privateMessagesContainer) {
    const id = privateMessagesContainer.dataset.conversationId;

    consumer.subscriptions.create({ channel: "ConversationChannel", id: id }, {
      received(data) {
        privateMessagesContainer.insertAdjacentHTML('beforeend', data); // called when data is broadcast in the cable
      }
    });
  }
};

export { initConversationCable };
