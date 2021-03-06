class CampersController < ApplicationController

  before_filter :authenticate, :only => [:new, :create, :edit, :update, :destroy]
  
  def index
    # Listing of campers not marked as sold, ordered by available, sale pending
    @camper = Camper.where("status_id != ?", 3).order('status_id ASC').all
    @search = Search.new
  end
  
  def new
    @camper = Camper.new
    21.times { @camper.attachments.build }
  end
  
  def show
		@camper = Camper.find(params[:id])
		@prospect = Prospect.new
	end
	
	def create
		if !signed_in? 
			redirect_to root_path
		else
			@camper = Camper.new(params[:camper])
			if @camper.save
				redirect_to @camper, :flash => {:success => "Camper was created." }
			else
				@title = "Create Camper"
				render 'new'
			end
		end
  end
  
  def edit
		@camper = Camper.find(params[:id])
		@title = "Edit RV"
		test = @camper.attachments.count
		(21-test).times { @camper.attachments.build }
	end
	
	def update
		@camper = Camper.find(params[:id])
		if @camper.update_attributes(params[:camper])
		  flash[:success] = "RV updated."
		  redirect_to @camper
		else
		  flash[:failure] = "RV was not updated."
		  @title = "Edit RV"
		  render 'edit'
		end
	end
	
	def destroy
		Camper.find(params[:id]).destroy
    redirect_to root_path, :flash => { :success => "Camper was deleted." }
  end

  def showcategory
    
    @camper = Camper.where("category_id = ?", params[:type]).order('status_id ASC')
    @search = Search.new
    @category = Category.find_by_id(params[:type])
  end
  
  def greywolf
    @camper = Camper.where("is_new = ?", true).order('status_id ASC')
    @search = Search.new
  end

  
end
