class ApplicationController < ActionController::Base
  include Clearance::Controller
def reset_session
  @_request.reset_session
end

end
