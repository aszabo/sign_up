class Mail < ActionMailer::Base
  

  def confirmation(sent_at = Time.now)
    subject    'Mail#confirmation'
    recipients '@e_mail'
    from       'invisible gmbh'
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def message(sent_at = Time.now)
    subject    'Mail#message'
    recipients 'aszabo@bluewin.ch'
    from       '@e_mail'
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
