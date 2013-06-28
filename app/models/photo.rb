class Photo < ActiveRecord::Base
  attr_accessible :image, :photoable_id, :photoable_type

  belongs_to :photoable, :polymorphic => true
end
