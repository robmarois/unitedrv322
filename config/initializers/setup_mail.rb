ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "mail.gmail.com",
  :user_name            => "rmarois@gmail.com",
  :password             => "google792",
  :authentication       => "plain",
  :enable_starttls_auto => true
}