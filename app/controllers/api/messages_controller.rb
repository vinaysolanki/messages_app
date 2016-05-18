class Api::MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @message = Message.new(message_params)

    if @message.save
      render nothing: true, status: 200
    else
      render json: { error: @message.errors.full_messages }
    end
  end

  private

  def message_params
    params.permit(:body)
  end
end