class StopsController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @stop = @trip.stops.create(stop_params)
    redirect_to trip_path(@trip)
  end

  def new
    @stop = Stop.new
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @stop = @trip.stops.find(params[:id])
    @stop.destroy
    redirect_to trip_path(@trip)
  end

  private
  def stop_params
    params.require(:stop).permit(:destination, :start_date, :end_date, :accommodation, :cost)
  end
end
