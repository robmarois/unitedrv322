class StaticPagesController < ApplicationController
  def home
  	@camper = Camper.new
  	@search = Search.new
  	@feed_items = Camper.all(:order => "created_at DESC", :limit => 5)
  	@subscriber = Subscriber.new
  	@special = Special.first
  end

  def about
  end

  def parts
  end

  def service
  end

  def news
  end

  def contact
    @question = Question.new
  end
end
