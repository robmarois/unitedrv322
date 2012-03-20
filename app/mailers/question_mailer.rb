class QuestionMailer < ActionMailer::Base
  default from: "rmarois@gmail.com"
  
  def support_email(question)
    @question = question
    mail(:to => "rmarois@gmail.com", :subject => "Question")
  end
end
