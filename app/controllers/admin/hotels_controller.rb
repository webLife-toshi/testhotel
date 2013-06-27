class Admin::HotelsController < Admin::AdminController

  def index
  end

  def show
    @hotel = Hotel.find(params[:id])
    @hotel_area = Hotel.find(params[:id])
    @facility = @hotel.facilities
    @area = @hotel_area.areas
  end

  def new
  end

  def create
  end

  def edit
    @hotel = Hotel.find(params[:id])
    @photo = @hotel.photos
  end

  def update
  end

  def destroy
  end
end
