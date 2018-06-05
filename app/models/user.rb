class User < ApplicationRecord
  has_many :messages
  validates :username, presence: true, uniqueness: true , length: { maximum: 20 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
