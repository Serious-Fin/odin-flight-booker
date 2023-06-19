class BookingsController < ApplicationController
  def new
    # receives: flight_id, num_of_passengers
    # shows: date, airports, flight_id
    # accepts: information for each passenger

    # Instantiate a booking object with provided flight id
    @booking = Booking.new#(flight_id: params[:booking][:flight_id])
    
    # Instantiate blank passenger objects
    #passenger_c = params[:booking][:passenger_count].to_i
    #passenger_c.times { @booking.passengers.build }
    render :new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to(@booking)
    end
  end

  def show
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
