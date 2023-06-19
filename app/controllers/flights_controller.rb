
class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [a.code, a.id]}
    @departure_times = Flight.select(:departure_time).distinct.order(:departure_time)

    if params[:flight]
      #@passenger_count = (params[:flight][:passenger_count].empty? ? 1 : params[:flight][:passenger_count])
      params[:flight].delete_if {|_k, v| v.empty? }
      @flights = (params[:flight].empty? ? Flight.all : Flight.where(flight_params.except(:passenger_count)))
      @flights = @flights.map{ |f| [f.flight_info, f.id] }
      @passenger_count = params[:flight][:passenger_count]
    end
  end

  private
  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure_time, :passenger_count)
  end
end
