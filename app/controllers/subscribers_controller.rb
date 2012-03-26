class SubscribersController < ApplicationController

  def index
  end
 
  def new
    @subscriber = Subscriber.new
  end

  def create
	@subscriber = Subscriber.create(params[:subscriber])	
	if @subscriber.save
			flash[:success] = "Thank you for sigining-up for our newsletter."
			redirect_to root_path
	else
			@subscriber.errors.full_messages.each do |msg| 
			if msg == "Email has already been taken"
				flash[:success] = "Your email is already on our list. Thank you for signing up."
			else
				flash[:error] = "There was an problem with your signup: " + msg
			end
			end			
			redirect_to root_path
	end
	
  end
end