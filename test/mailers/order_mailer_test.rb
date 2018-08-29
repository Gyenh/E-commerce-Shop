require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "payment" do
    mail = OrderMailer.payment
    assert_equal "Payment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
