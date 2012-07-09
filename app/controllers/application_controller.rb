class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :set_user_time_zone

    rescue_from ActiveRecord::RecordNotFound, :with => :render_record_not_found

  protected
  def set_user_time_zone
    Time.zone = 'Eastern Time (US & Canada)'
  end
end
