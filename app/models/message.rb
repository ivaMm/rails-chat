class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_by_content,
    against: :content,
    using: {
      tsearch: { prefix: true }
    }
end
