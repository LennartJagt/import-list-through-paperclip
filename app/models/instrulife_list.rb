class InstrulifeList < ActiveRecord::Base
  
  attr_accessible :name, :pricelist
  has_attached_file :pricelist
end
