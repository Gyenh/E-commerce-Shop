# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/payment
  def payment
   user = user.last #User.first
   OrderMailer.payment(user)
  end
end
