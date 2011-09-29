require 'spec_helper'

describe VehiclesController do
  render_views
  
  describe "vehicles index page" do
    before(:each) do
      @vehicle  = Factory(:vehicle)
      second    = Factory(:vehicle, :plate => "HOTTEP", :make => "Honda", :model => "CRV", :year => "2011")
      @vehicles = [@vehicle, second]
    end
    
    it "should exist" do
      get :index
      response.should be_success  
    end
    
    it "should have the right title" do
      get :index
      response.should have_selector("title", :content => "#{@base_title} | Vehicles" )
    end
    
    it "should have a list of all vehicles" do
      get :index
      @vehicles.each do |vehicle|
        response.should have_selector("td", :content => vehicle.plate)
      end
    end
  end
end
