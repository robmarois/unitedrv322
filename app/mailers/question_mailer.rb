class QuestionMailer < ActionMailer::Base
  default from: "rmarois@gmail.com"
  
  def support_email(question)
    @question = question
    mail(:to => "rmarois@gmail.com", :subject => "Question")
  end
  
  def prospect_message(prospect)
  	@prospect = prospect
    mail(:to => @prospect.email, :subject => "A new message is ready", :from => "rmarois@gmail.com")
  end
end
