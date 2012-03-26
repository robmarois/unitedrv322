class ProspectsController < ApplicationController
 
  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.create(params[:prospect])	
    if @prospect.save
      flash[:success] = "Thank you for inquiring about this RV. We will contact you shortly to answer your request."
      QuestionMailer.prospect_message(@prospect).deliver
      redirect_to camper_path(@prospect.camper_id)
    else
      @prospect.errors.full_messages.each do |msg| 
          flash[:error] = "There was an problem with your message: " + msg
          redirect_to camper_path(@prospect.camper_id)
      end			
    end
  end
  
end
