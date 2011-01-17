require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "trade_request" do
    mail = Notifier.trade_request
    assert_equal "Trade request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "trade_accepted" do
    mail = Notifier.trade_accepted
    assert_equal "Trade accepted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
