class Flight < ApplicationRecord
  validates :departure_time, presence: true
  validates :duration, presence: true
end
