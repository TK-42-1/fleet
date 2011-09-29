class Driver < ActiveRecord::Base
  attr_accessible :fname, :lname
  
  has_many :vehicles
  
  validates :fname, :lname, :presence => true
end
