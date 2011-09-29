require 'spec_helper'

describe PagesController do
  render_views

  describe  "pages" do
  
    before(:each) do
      @base_title = "TETCO Fleet Management"
    end
  
    describe "home" do
    
      it "should exist" do
        get :home
        response.should be_success
      end

      it "should have the right title" do
        get :home
        response.should have_selector("title", :content => "#{@base_title}" )
      end
      
      it "should have a menu of options" do
        get :home
        response.should have_selector("a", :href => "/vehicles")
        response.should have_selector("a", :href => "/reports")
        response.should have_selector("a", :href => "/maint")
      end
    end
  end
end