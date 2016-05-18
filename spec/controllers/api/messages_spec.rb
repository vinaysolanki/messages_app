require 'rails_helper'

describe Api::MessagesController, type: :controller do

  describe "POST" do
    let(:params) {
      { body: "This is a sample message" }
    }

    it "creates a message with a body" do
      post :create, params

      expect(response).to be_success
      expect(Message.first.body).to eql "This is a sample message"
    end
  end
end