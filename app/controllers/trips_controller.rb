class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

def show
  @trip = Trip.find(params[:id])
end

  def new
  end

  def create
    @trip = Trip.new(trip_params)

    @trip.save
    redirect_to @trip
  end

  private
  def trip_params
    params.require(:trip).permit(:destination, :start_date, :end_date, :budget)
  end
end
