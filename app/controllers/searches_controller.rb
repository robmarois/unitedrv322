class SearchesController < ApplicationController

	def new
		@search = Search.new
	end
	
	def index
  		@campers = Camper.all
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