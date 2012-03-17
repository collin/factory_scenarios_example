FactoryGirl.define do
  factory :line_item do
    name { Faker::Company.catch_phrase }
    item_price { rand(500) + rand(1000) + 500 }
    quantity { rand(5) + 1 }
  end
end