class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :subscriptions, inverse_of: :user
  has_many :user_conversations, inverse_of: :user
  has_many :messages, inverse_of: :user
end
