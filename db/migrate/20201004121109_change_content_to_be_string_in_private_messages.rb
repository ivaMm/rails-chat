class ChangeContentToBeStringInPrivateMessages < ActiveRecord::Migration[6.0]
  def change
    change_column :private_messages, :content, :string
  end
end
