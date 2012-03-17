FactoryGirl.define do
  factory :order do
    user { Factory.create :user }
  end

  factory :shipped_order, parent: :order do
  end

  factory :delivered_order, parent: :order do
  end
end