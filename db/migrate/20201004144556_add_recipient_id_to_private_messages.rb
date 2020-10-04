class AddRecipientIdToPrivateMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :private_messages, :recipient_id, :integer
  end
end
