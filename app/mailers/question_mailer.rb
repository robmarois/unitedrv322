class QuestionMailer < ActionMailer::Base
  default from: "unitedrv.email@gmail.com"
  
  def support_email(question)
    @question = question
    mail(:to => ["ksgilley09@yahoo.com","urvcenters@yahoo.com"], 
         :subject => "Support Question from the United RV website",
         :bcc => "rmarois@gmail.com")
  end
  
  def prospect_message(prospect)
  	@prospect = prospect
    mail(:to => ["ksgilley09@yahoo.com", 
                 "urvcenters@yahoo.com"], 
         :subject => @prospect.camper.headline,
         :bcc => "rmarois@gmail.com", 
         :from => "unitedrv.email@gmail.com")
  end
end
