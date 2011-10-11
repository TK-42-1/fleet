class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicles.all
    @title = "Vehicles"
  end

  def new
    @vehicle = Vehicles.new
    @title = "New Vehicle"
  end
  
  def show
    @vehicles = Vehicles.find(params[:id])
    @title = @vehicle.year
  end
  
  def create
    @vehicle = Vehicles.new(params[:vehicles])
    if @vehicle.save
      redirect_to @vehicle
    else
      render 'new'
    end  
  end
  
  def destroy
  end

end
