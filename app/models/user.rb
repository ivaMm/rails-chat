class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :messages
  has_many :private_messages
  has_many :conversations, foreign_key: :sender_id
  validates :photo, presence: true
  validates :nickname, presence: true, uniqueness: true, length: { in: 2..20 }
end
