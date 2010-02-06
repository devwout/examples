# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected
  
  def render_error(scope, status=422)
    error = {
      :title => t(:title, :scope => [:custom_errors, *scope]),
      :message => t(:message, :scope => [:custom_errors, *scope])
    }
    
    if request.format.html?
      render :template => 'application/error', :locals => error, :status => status
    else
      render :json => {:error => error}, :status => status
    end
  end
  
  # Override to view the public error feedback when running on localhost in production mode.
  def local_request?
    return false if RAILS_ENV == 'production'
  end
  
end
