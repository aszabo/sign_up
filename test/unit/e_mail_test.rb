require 'test_helper'

class EMailTest < ActionMailer::TestCase
  test "multipart_alternative" do
    @expected.subject = 'EMail#multipart_alternative'
    @expected.body    = read_fixture('multipart_alternative')
    @expected.date    = Time.now

    assert_equal @expected.encoded, EMail.create_multipart_alternative(@expected.date).encoded
  end

end
