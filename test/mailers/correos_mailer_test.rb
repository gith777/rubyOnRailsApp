require 'test_helper'

class CorreosMailerTest < ActionMailer::TestCase
  test "notificacion" do
    mail = CorreosMailer.notificacion
    assert_equal "Notificacion", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
