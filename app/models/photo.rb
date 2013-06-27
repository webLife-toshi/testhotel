class Photo < ActiveRecord::Base
  attr_accessible :photoable_id, :photoable_type, :image

  belongs_to :photoable, :polymorphic => :true
  has_attached_file :image,
                    :styles => { :medium => "300x300", :thumb => "100x100"}  
end
