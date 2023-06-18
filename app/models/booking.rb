class Booking < ApplicationRecord
  #belongs_to :passenger
  #belongs_to :flight
  belongs_to :flight

  has_many :passengers
end
