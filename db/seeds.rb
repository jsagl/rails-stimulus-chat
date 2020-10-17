# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: 'user1@mail.com', password: 'azerty')
user2 = User.create!(email: 'user2@mail.com', password: 'azerty')
user3 = User.create!(email: 'user3@mail.com', password: 'azerty')
user4 = User.create!(email: 'user4@mail.com', password: 'azerty')

channel = Channel.create!(title: 'Very first channel')

Subscription.create!(user_id: user1.id, channel_id: channel.id)
Subscription.create!(user_id: user2.id, channel_id: channel.id)

conversation = Conversation.create!

UserConversation.create!(user_id: user3.id, conversation_id: conversation.id)
UserConversation.create!(user_id: user4.id, conversation_id: conversation.id)

Message.create!(user_id: user1.id, channel_id: channel.id, content: 'Hi!')
Message.create!(user_id: user2.id, channel_id: channel.id, content: 'Hello!')
Message.create!(user_id: user1.id, channel_id: channel.id, content: 'How are you')
Message.create!(user_id: user3.id, channel_id: channel.id, content: 'This is our first private conversation!')
Message.create!(user_id: user4.id, channel_id: channel.id, content: 'Great !')


