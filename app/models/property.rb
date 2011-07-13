class Property < ActiveRecord::Base
  validates_presence_of :title, :description, :address, :zipcode, :price, :date_available
  validates_numericality_of :price
  validates_numericality_of :bedrooms, :bathrooms, :size, :allow_nil => true
end
