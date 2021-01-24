class ApplicationController < ActionController::Base
def reset_session
  @_request.reset_session
end

end
