class Flight < ApplicationRecord
  validates :departure_time, presence: true
  validates :duration, presence: true

  belongs_to :departure_airport, :class_name => 'Airport'
  belongs_to :arrival_airport, :class_name => 'Airport'

  def flight_time_formatted
    departure_time.strftime("%d/%m/%y %H:%M")
  end
end
