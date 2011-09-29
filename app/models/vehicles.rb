class Vehicles < ActiveRecord::Base
  attr_accessible :plate, :status, :vin, :make, :model, :year
  
  belongs_to :driver
  has_many :maintenances
  
  make_regex = /[a-z]*/i
  
  validates :vin, :length => {:is => 17}
  validates :plate, :length => { :minimum => 5, :maximum => 7 }, :allow_nil => false
  validates :make, :model, :status, :presence => true
  validates_length_of :year, :is => 4
end
