class Message < ActiveRecord::Base

  has_many :hashtags_messages
  has_many :hashtags, through: :hashtags_messages

  validates_length_of :body, maximum: 141

  after_create :extract_hashtags

  private

  def extract_hashtags
    tags = body.scan(/#\w+/)
    tags.each do |tag|
      hashtags.create(name: tag)
    end
  end
end
