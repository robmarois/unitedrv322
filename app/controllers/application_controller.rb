class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :set_user_time_zone

  def render_optional_error_file(status_code)
    if status_code == :not_found
      render_404
    else
      super
    end
  end

  def render_404
    respond_to do |type| 
      type.html { render :template => "errors/error_404", :layout => 'application', :status => 404 } 
      type.all  { render :nothing => true, :status => 404 } 
    end
    true  # so we can do "render_404 and return"
  end


  protected
  def set_user_time_zone
    Time.zone = 'Eastern Time (US & Canada)'
  end
end
