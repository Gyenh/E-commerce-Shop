class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.payment.subject
  #
  def payment(user)
 @user = user
 mail(to: @user.email, subject: "Welcome to Maneki-Neko")
 end
end
