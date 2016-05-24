class MessagesController < ApplicationController

  def index
    @messages = Message.all.order("created_at DESC")
    @hashtags = Hashtag.get_most_frequent
  end
end