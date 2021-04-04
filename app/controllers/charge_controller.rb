class ChargeController < ApplicationController
  before_action :require_login

  def create
          @event = Event.find(params[:id])
	  if @event.nil?
             redirect_to root_path
             return
          end
           session[:current_id] = @event.id
	   session[:current_tickets] = @event.Tickets
	  #setting up Stripe session for payment
	    #setting up Stripe session for payment
	  @session = Stripe::Checkout::Session.create(
                        payment_method_types: ['card'],
                        line_items: [{
                          name: @event.Title,
                          description: 'Bought ticket for event',
			  amount: @event.Price,
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
		@event = Event.find(session[:current_id])
		@update = @event.update(Tickets: session[:current_tickets]-1)
		@result = Ticket.new(Event_id: session[:current_id], amount: 1 )
		@result.save
	end

	def cancel
	end

end
