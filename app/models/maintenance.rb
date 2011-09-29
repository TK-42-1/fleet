class Maintenance < ActiveRecord::Base
  attr_accessible :invoice, :date, :milage, :cost, :serviced_by, :category, :description
  belongs_to :vehicles
  
  date_format = /\d{2}\-\d{2}\-\d{4}/
  cost_format = /\A\d+\.\d{2}\z/
  
  validates :invoice, :milage, :serviced_by, :category, :description, :presence => true
  validates :date, :format => { :with => date_format }, :presence => true
  validates :cost, :format => { :with => cost_format }, :presence => true
end
