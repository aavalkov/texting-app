require 'spec_helper'

describe Message, :vcr => true do
  it "doesnt save the message if twilio gives and error" do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5039463641')
    expect(message.save).to eq false
  end
end
