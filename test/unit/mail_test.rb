require 'test_helper'

class MailTest < ActionMailer::TestCase
  test "confirmation" do
    @expected.subject = 'Mail#confirmation'
    @expected.body    = read_fixture('confirmation')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mail.create_confirmation(@expected.date).encoded
  end

  test "message" do
    @expected.subject = 'Mail#message'
    @expected.body    = read_fixture('message')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mail.create_message(@expected.date).encoded
  end

end
