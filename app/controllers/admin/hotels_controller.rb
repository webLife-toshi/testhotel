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
  end

  def update
    @hotel = Hotel.find(params[:id])
    if @hotel.update_attributes(params[:hotel])
      flash[:success] = "Hotel updated"
      redirect_to @hotel
    else
      render 'edit'
    end
  end
 
  def destroy
  end
end
