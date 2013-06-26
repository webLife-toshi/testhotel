class HotelsController < ApplicationController

  def show
    @hotel = Hotel.find(params[:id])
    @hotel_area= Hotel.find(params[:id])
    @facility = @hotel.facilities
    @area = @hotel_area.areas
  end
end
