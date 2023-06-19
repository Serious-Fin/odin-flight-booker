class Passenger < ApplicationRecord
  belongs_to :booking

  def passenger_info
    "Name: #{self.name} | Email: #{self.email}"
  end
end
