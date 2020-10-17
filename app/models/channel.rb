class Channel < ActiveRecord::Base
  has_many :subscriptions, inverse_of: :channel
  has_many :messages, inverse_of: :channel
  has_many :users, through: :subscriptions, inverse_of: :channel

end