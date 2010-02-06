class TestController < ApplicationController
  
  class LockedError < StandardError ; end
  
  rescue_from(LockedError) { render_error(:locked) }
  
  def uncaught_error
    raise "now this was unexpected"
  end
  
  def error
    raise LockedError
  end
  
end