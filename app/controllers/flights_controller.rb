
class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [a.code, a.id]}
    @departure_times = Flight.select(:departure_time).distinct.order(:departure_time)

    if params[:flight]
      params[:flight].delete_if {|_k, v| v.empty? }
      @flights = (params[:flight].empty? ? Flight.all : Flight.where(flight_params))
    end
  end

  private
  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure_time)
  end
end
