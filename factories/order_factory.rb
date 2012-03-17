FactoryGirl.define do
  factory :order do
    user { Factory.create :user }
  end

  factory :little_order, parent: :order do
    line_items { (0..3).map { Factory.create(:line_item) } }
  end

  factory :big_order, parent: :order do
    line_items { (0..10).map { Factory.create(:line_item) } }    
  end

  factory :shipped_order, parent: :little_order do
  end

  factory :delivered_order, parent: :little_order do
  end
end