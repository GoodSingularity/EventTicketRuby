class ChargeController < ApplicationController
	def create
          @event = Event.find(params[:id])
	  if @event.nil?
             redirect_to root_path
             return
          end
	  #setting up Stripe session for payment
	  @session = Stripe::Charge::Session.create(
                        payment_method_types: ['card'],
                        line_items: [{
                          title: event.title,
                          amount: event.price,
                          currency: 'eur',
                          quantity: 1
                        }],
                        success_url: charge_success_url,
                        cancel_url: charge_cancel_url
                )
          respond_to do |format|
            format.js #render create.js.erb
	  end
        end
	
	def success
	end

	def cancel
	end

end
