class UserConversation < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_conversations
  belongs_to :conversation, inverse_of: :user_conversations

end