require 'spec_helper'

describe Driver do
 
  before(:each) do
    @attr = { :fname => "John", :lname => "Zoidberg" }
  end
  
  it "should create a new driver with valid attribs" do
    Driver.create!(@attr)
  end
  
  it "should not create a driver without both first and last name" do
    @fake = { :fname => "", :lname => "" }
    Driver.new(@fake).should_not be_valid
  end
end
