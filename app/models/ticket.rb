class Ticket < ApplicationRecord
    validates_presence_of :Event_id, :amount
end
