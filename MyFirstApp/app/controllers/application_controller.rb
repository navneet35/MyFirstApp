class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  rescue_from Exception , :with => :catch_exceptions
  protect_from_forgery with: :exception

  def catch_exceptions(e)
     flash[:err] = "Exception caught."
  end
end
