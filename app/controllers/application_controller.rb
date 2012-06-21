class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :set_user_time_zone

  protected
  def set_user_time_zone
    Time.zone = 'Eastern Time (US & Canada)'
  end
end
