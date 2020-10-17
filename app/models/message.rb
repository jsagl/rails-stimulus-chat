class Message < ActiveRecord::Base
  belongs_to :user, inverse_of: :messages
  belongs_to :conversation, inverse_of: :messages, optional: true
  belongs_to :channel, inverse_of: :messages, optional: true

end
