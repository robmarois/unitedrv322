class CampersController < ApplicationController

  def new
    @camper = Camper.new
  end
  
  def show
		@camper = Camper.find(params[:id])
	end
  
end