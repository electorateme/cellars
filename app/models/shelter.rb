class Shelter < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :address_3, :city, :family_size, :first_name, :last_name, :shelter_location, :state, :telephone, :zip_plus, :zipcode

  validates :address_1, :presence => true 
  validates :address_2, :presence => true
  validates :city, :presence => true
  validates :family_size, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :shelter_location, :presence => true
  validates :state, :presence => true
  validates :telephone, :length => { :minimum => 10 }
  validates :zipcode, :length => { :minimum => 4 }

end
