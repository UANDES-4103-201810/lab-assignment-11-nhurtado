require 'rails_helper'

RSpec.describe Message, type: :message do
  it "message valid attributes" do
    @user = create(:user,username: "user",email: "user1@example.com",password: "abcd1234")
    @message = build(:message,user_id: @user.id,date: Date.today,content: "message")
    expect(@message).to be_valid
  end
  it "message user can't be null" do
    @message = build(:message,user_id: nil,date: Date.today,content: "message")
    expect(@message).to_not be_valid
  end
  it "message user must exist" do
    @message = build(:message,user_id: -1,date: Date.today,content: "message")
    expect(@message).to_not be_valid
  end
end
