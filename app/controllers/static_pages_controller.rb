class StaticPagesController < ApplicationController
  def home
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
