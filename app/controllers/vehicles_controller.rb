class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
    @title = "Vehicles"
  end

  def new
    @vehicle = Vehicle.new
    @title = "New Vehicle"
  end
  
  def show
    @vehicle = Vehicle.find(params[:id])
    @vehicles = Vehicle.all
  end
  
  def create
    @vehicle = Vehicle.new(params[:vehicle])
    if @vehicle.save
      redirect_to @vehicle, :flash => {:success => "New vehicle created" }
    else
      render 'new'
    end  
  end
  
  def destroy
  end

end
