FactoryBot.define do
  factory :user do
    username "StringValue"
    email "user@example.com"
    password "abcd1234"
  end
  factory :message do
    user_id 1
    date "2018-06-05"
    content "this is the content of the message."
  end
end
