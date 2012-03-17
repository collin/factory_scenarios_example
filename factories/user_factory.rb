FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "test1234"
    password_confirmation "test1234"
    confirmation_sent_at { 2.hours.ago }
    confirmed_at { 1.hour.ago }
  end

  factory :recoverable_user, parent: :user do
    
  end

  factory :confirmable_user, parent: :user do
    confirmed_at nil
  end
end