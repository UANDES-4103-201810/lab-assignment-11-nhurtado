require 'rails_helper'

RSpec.describe User, type: :user do
  it "user valid attributes" do
    @user = build(:user,username: "user",email: "user1@example.com",password: "abcd1234")
    expect(@user).to be_valid
  end
  it "username unique" do
    @user1 = create(:user,username: "sameuser",email: "user2@example.com",password: "abcd1234")
    @user2 = build(:user,username: "sameuser",email: "user3@example.com",password: "abcd1234")
    expect(@user2).to_not be_valid
  end
  it "email unique" do
    @user1 = create(:user,username: "user2",email: "same@example.com",password: "abcd1234")
    @user2 = build(:user,username: "user3",email: "same@example.com",password: "abcd1234")
    expect(@user2).to_not be_valid
  end
  it "username less than 20 char" do
    @user = build(:user,username: "123412341234123412341",email: "user5@example.com",password: "abcd1234")
    expect(@user).to_not be_valid
  end
end
