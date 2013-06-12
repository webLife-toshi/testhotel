class Admin::AdministratorsController < Admin::AdminController
 before_filter :authenticate_administrator 
  def new
    @administrator = Administrator.new
  end

  def show

  end

  def create
    @administrator = Administrator.includes(:user).new(params[:administrator])
    if @administrator.save
      redirect_to admin_administrators_path, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
