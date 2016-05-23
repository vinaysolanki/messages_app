class Hashtag < ActiveRecord::Base

  has_many :hashtags_messages
  has_many :messages, through: :hashtags_messages
end
