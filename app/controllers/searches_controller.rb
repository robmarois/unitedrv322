class SearchesController < ApplicationController

	def new
		@search = Search.new
	end
	
	def index
  		@campers = Camper.all.order('status_id ASC')
  		@search = Search.new
	end
	
	def create
		@search = Search.create!(params[:search])
		redirect_to @search
	end
	
	def show
		@search = Search.find(params[:id])
	end
	
	def update
		@search = Search.create!(params[:search])
		redirect_to @search
	end
end
