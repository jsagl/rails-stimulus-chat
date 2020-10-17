class Conversation < ActiveRecord::Base
  has_many :messages, inverse_of: :conversation
  has_many :user_conversations, inverse_of: :conversation
  has_many :users, through: :user_conversations, inverse_of: :conversation

end
