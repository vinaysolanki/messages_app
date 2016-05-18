class Message < ActiveRecord::Base

  validates_length_of :body, maximum: 141
end
