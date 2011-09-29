require 'spec_helper'

describe Maintenance do

  before(:each) do
    @attr = {
      :invoice => "154",
      :date => "09-11-2001",
      :milage => "145629",
      :cost => "40.23",
      :serviced_by => "Gozer",
      :description => "Took a hammer to the engine",
      :category => "Emergency"
    }
  end

    it "should create a new entry with valid attributes" do
      Maintenance.create!(@attr)
    end
    
    it "should require all fields" do
      @empty = { :invoice => "", 
                 :date => "", 
                 :milage => "", 
                 :serviced_by => "", 
                 :description => "", 
                 :category => "" }
      empty = Maintenance.new(@empty)
      empty.should_not be_valid
    end
    
  describe "failure" do
      
    it "should require properly formatted date" do
      bad_date = Maintenance.new(@attr.merge( :date => '09-11-01'))
      bad_date.should_not be_valid
    end
    
    it "should require a properly formatted cost" do
      bad_cost = Maintenance.new(@attr.merge( :cost => '40.012'))
      bad_cost.should_not be_valid
    end
  end
end

