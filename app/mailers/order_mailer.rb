class OrderMailer < ActionMailer::Base
  default from: "orders@example.com"
  layout "mail"

  def confirmation(order)
    @order = order
    mail to: order.email, subject: "Order Confirmation"
  end

  def shipping_confirmation(order)
    @order = order
    mail to: order.email, subject: "Your Order Shipped :D"
  end

  def delivery_confirmation(order)
    @order = order
    mail to: order.email, subject: "We Delivered Your Order"
  end
end
