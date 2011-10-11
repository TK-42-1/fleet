class MaintenanceController < ApplicationController
    def index
      @maints = Maintenance.all    
      @title = "Maintenance"        
    end

    def new
      @title = "Enter Workorder"
      @new_maint = Maintenance.new    

    end

   def create
      @maint = Maintenance.new(params[:maint])
       if @maint.save
         redirect_to @maint, :flash => {:success => "New maintenance record created" }
       else
         render 'new'
       end
    end

    def destroy

    end

    def edit

    end
  end

