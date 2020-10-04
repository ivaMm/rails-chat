class PrivateMessage < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  def self.includes(user)
    where(user_id: user.id).or(where(recipient_id: user.id))
  end

  include PgSearch::Model
  pg_search_scope :search_by_content,
    against: :content,
    using: {
      tsearch: { prefix: true }
    }
end
