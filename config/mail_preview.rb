FactoryScenarios::Mail.registrations do
  # Order Mailers
  register "Order Confirmation" do
    mailer OrderMailer
    message :confirmation
    message_args { Factory.create(:big_order) }
  end

  register "Shipping Confirmation" do
    mailer OrderMailer
    message :shipping_confirmation
    message_args { Factory.create(:shipped_order) }
  end

  register "Delivery Confirmation" do
    mailer OrderMailer
    message :delivery_confirmation
    message_args { Factory.create(:delivered_order) }
  end

  # Marketing Mailers
  register "Welcome Message" do
    mailer MarketingMailer
    message :welcome
    message_args { Factory.create(:user) }
  end

  register "Come Back" do
    mailer MarketingMailer
    message :resurrection
    message_args { Factory.create(:user) }
  end

  # Devise Mailers
  register "Confirmation Instructions (logged in)" do
    mailer Devise::Mailer
    message :confirmation_instructions
    message_args { Factory.create(:confirmable_user) }
    login_as { |user| user }
  end

  register "Confirmation Instructions (not logged in)" do
    mailer Devise::Mailer
    message :confirmation_instructions
    message_args { Factory.create(:confirmable_user) }
  end

  register "Password Reset Instructions" do
    mailer Devise::Mailer
    message :reset_password_instructions
    message_args { Factory.create(:recoverable_user) }    
  end

  register "Locking Instructions" do
    mailer Devise::Mailer
    message :unlock_instructions
    message_args { Factory.create(:user) }
  end
end
