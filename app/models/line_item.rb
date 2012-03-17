class LineItem < ApplicationModel
  attr_accessor :name, :quantity, :item_price

  def dollar_price
    item_price / 100
  end

  def total
    dollar_price * quantity
  end

end