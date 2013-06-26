class Admin::HotelsController < Admin::AdminController
   before_filter :authenticate_administrator
  def index
  end

  def show
    @hotel = Hotel.find(params[:id])
    @hotel_area= Hotel.find(params[:id])
    @facility = @hotel.facilities
    @area = @hotel_area.areas
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
