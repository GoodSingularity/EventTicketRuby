class ChargeController < ApplicationController
	def create
          @event = Event.find(params[:id])
	  if @event.nil?
             redirect_to root_path
             return
          end

          respond_to do |format|
            format.js #render create.js.erb
	  end
        end
	
	def success
	end

	def cancel
	end

end
