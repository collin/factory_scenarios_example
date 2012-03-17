class MarketingMailer < ActionMailer::Base
  default from: "offers@example.com"
  layout "mail"

  def welcome(user)
    @user = user
    mail to: user.email, subject: "Welcome, we <3 you :D"
  end

  def resurrection(user)
    @user = user
    mail to: user.email, subject: "We miss you ):"
  end
end
