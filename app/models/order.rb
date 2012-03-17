class Order 
  include ActiveModel

  attr_accessor :user

  delegate :email, to: 'user'

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def save!
    true
  end
end