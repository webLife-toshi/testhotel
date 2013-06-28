class Admin::PhotosController < Admin::AdminController

  def index
    @photoable = find_photoable
    @photo = @hotoable.photos
  end

  def create
    @photoable = find_photoable
    @photo = @photoable.photos.build(params[:photo])
    if @photo.save
      flash[:notice] = "Successfully saved comment."
      redirect_back_or :id => nil
    else
      render :action => 'new'
    end
  end

  def find_photoable
    params.each do |name, value|
      if name =~ /(.+)_id$/
         return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
