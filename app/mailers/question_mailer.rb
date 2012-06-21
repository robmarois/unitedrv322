class QuestionMailer < ActionMailer::Base
  default from: "unitedrv.email@gmail.com"
  
  def support_email(question)
    @question = question
    mail(:to => ["rmarois@gmail.com","ksgilley09@yahoo.com","urvcenters@yahoo.com"], 
         :subject => "Support Question from the United RV website",
         :bcc => "robmarois@teninfive.com")
  end
  
  def prospect_message(prospect)
  	@prospect = prospect
    mail(:to => ["rmarois@gmail.com", "ksgilley09@yahoo.com", 
                 "urvcenters@yahoo.com"], 
         :subject => @prospect.camper.headline,
         :bcc => "robmarois@teninfive.com", 
         :from => "unitedrv.email@gmail.com")
  end
end
