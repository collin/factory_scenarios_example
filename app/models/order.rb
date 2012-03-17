class Order < ApplicationModel

  attr_accessor :user
  attr_accessor :line_items

  delegate :email, to: 'user'
  delegate :name, to: 'user'

  def initialize(attributes={})
    attributes[:line_items] ||= []
    super    
  end

  def total
    line_items.map(&:total).sum
  end

end