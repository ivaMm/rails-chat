class AddSenderIdToPrivateMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :private_messages, :sender_id, :integer
  end
end
