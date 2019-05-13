module Email
  @@emails_sent = 10

  def send_email
    "email has been sent"
    @@email_sent += 1
  end

  def receive_email
    "checking for email now"
  end

  def email_count
    @@emails_sent
  end
end