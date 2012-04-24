ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "imap.gmail.com",
  :user_name            => "anushreekunal@gmail.com",
  :password             => "Ankurtheone",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
