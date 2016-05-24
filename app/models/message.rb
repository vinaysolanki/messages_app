class Message < ActiveRecord::Base

  has_many :hashtags_messages, dependent: :delete_all
  has_many :hashtags, through: :hashtags_messages

  validates_length_of :body, maximum: 141

  after_create :extract_hashtags

  private

  def extract_hashtags
    tags = body.scan(/#\w+/)
    tags.each do |tag|
      hashtags << Hashtag.find_or_create_by(name: tag)
    end
  end
end
