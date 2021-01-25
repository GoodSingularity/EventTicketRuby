class Event < ApplicationRecord
    validates_presence_of :Title, :Date, :Time, :Tickets, :Price
end
