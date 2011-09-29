require 'spec_helper'

describe MaintenanceController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "should be successful" do
      get 'destroy'
      response.should be_success
    end
  end
  
  before(:each) do
    @maint = Factory(:maint)
    second = Factory(:maint, :invoice => "20001")
    
    maints = [@maint, second]
  end
  
  describe "maint page" do
    
    it "should exist" do
      get :index
      response.should be_success
    end
    
    it "should have the right title" do
      get :index
      response.should have_selector("title", :content => "#{@base_title} | Maintenance")
    end
    
    it "should have a list of maintance invoices" do
      get :index
      response.should have_selector("td", :content => @maint.invoice)
    end
  end

end
