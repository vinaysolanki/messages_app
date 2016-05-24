class Hashtag < ActiveRecord::Base

  has_many :hashtags_messages
  has_many :messages, through: :hashtags_messages

  validates_uniqueness_of :name

  def self.get_most_frequent
    hashtags = joins(:hashtags_messages).group(:name).count
    hashtags.sort_by { |key,value| value }.reverse.to_h
  end
end
