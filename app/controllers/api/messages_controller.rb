class Api::MessagesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    Rails.logger.ap "called"
    render json: { "key" => "awesome" }
  end
end