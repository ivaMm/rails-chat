class PrivateMessage < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

=begin
  include PgSearch::Model
  pg_search_scope :search_by_content,
    against: :content,
    using: {
      tsearch: { prefix: true }
    }
=end
end
