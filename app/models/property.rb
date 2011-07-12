class Property < ActiveRecord::Base
  validates_presence_of :title, :description, :address, :zipcode, :price, :date_available
end
