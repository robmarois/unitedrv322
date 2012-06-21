class QuestionMailer < ActionMailer::Base
  default from: "unitedrv.email@gmail.com"
  
  def support_email(question)
    @question = question
    mail(:to => "rmarois@gmail.com", :subject => "Question")
  end
  
  def prospect_message(prospect)
  	@prospect = prospect
    mail(:to => @prospect.email, :subject => @prospect.camper.headline, :from => "unitedrv.email@gmail.com")
  end
end
