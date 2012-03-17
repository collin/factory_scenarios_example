class ApplicationModel
  include ActiveModel

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def save!
    true
  end
end