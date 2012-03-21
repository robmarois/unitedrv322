class SpecialsController < ApplicationController

  def update
    @special = Special.find(params[:id])
      if @special.update_attributes(params[:special])
        flash[:success] = "Featured RV updated."
        redirect_to user_path
      else
        flash[:failure] = "Featured RV not updated."
        redirect_to user_path
      end
    end
  
end