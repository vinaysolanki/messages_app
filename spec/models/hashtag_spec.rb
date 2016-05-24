require 'rails_helper'

RSpec.describe Hashtag, type: :model do
  describe "validations" do
    before do
      Hashtag.create(name: "#test")
    end

    it "should have a unique name" do
      hashtag = Hashtag.new(name: "#test")
      hashtag.save

      expect(hashtag.errors[:name]).to_not be_empty
    end
  end

  describe ".get_most_frequent" do
    subject { described_class.get_most_frequent }

    before do
      Message.create(body: "testing #new #great")
      Message.create(body: "another msg #new")
    end

    it "should get a hash of hashtags with count" do
      expect(subject).to include("#new" => 2)
    end

    it "should be sorted by count in descending order" do
      expect(subject.first.first).to eql("#new")
      expect(subject.first.last).to eql(2)
    end
  end
end
