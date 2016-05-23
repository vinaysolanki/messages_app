require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "callbacks" do
    describe "after_create" do
      let(:message_params) {
        { body: "Sample message #awesome #great" }
      }

      it "creates hashtags from the message body" do
        message = Message.new(message_params)
        message.save

        expect(Hashtag.count).to eql 2
        expect(Hashtag.first.name).to eql("#awesome")
        expect(Hashtag.last.name).to eql("#great")
      end
    end
  end
end
