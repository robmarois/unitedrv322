class QuestionsController < ApplicationController


  def create
    @question = Question.new(params[:question])
  
    respond_to do |format|
      if @question.save
        QuestionMailer.support_email(@question).deliver
        format.html { redirect_to(contact_path, :notice => 'Question was successfully sent.') }
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        @question.errors.full_messages.each do |msg| 
            flash[:error] = "There was an problem with your question: " + msg
        end
        format.html { redirect_to contact_path(@question) }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end