class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :set_user_time_zone

    rescue_from ActiveRecord::RecordNotFound, :with => :render_record_not_found

  # Catch record not found for Active Record
  def render_record_not_found
    render :template => "shared/catchmissingpage", :layout => false, :status => 404
  end

  # Catches any missing methods and calls the general render_missing_page method
  def method_missing(*args)
    render_missing_page # calls my common 404 rendering method
  end

  # General method to render a 404
  def render_missing_page
    render :template => "shared/catchmissingpage", :layout => false, :status => 404
  end


  protected
  def set_user_time_zone
    Time.zone = 'Eastern Time (US & Canada)'
  end
end
