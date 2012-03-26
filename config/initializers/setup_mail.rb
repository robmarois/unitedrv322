ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "mail.gmail.com",
  :user_name            => "unitedrv.email@gmail.com",
  :password             => "foobar09",
  :authentication       => "plain",
  :enable_starttls_auto => true
}