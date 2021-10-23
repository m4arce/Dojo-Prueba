class BuildingsController < ApplicationController
  def index
    @buildings= Building.all
  end

  def show
    @building = Building.find(params[:id])
    
  end

  def new
    
  end

  def create
    @building = Building.new(
      
      nombre_edificio: params[:nombre_edificio], 
      direccion: params[:direccion],
      ciudad: params[:ciudad] 
    )

    respond_to do |format|
      if @building.save
        format.html { redirect_to edificios_url, notice: "Edificio creado con exito" }
      end
    end
  end
end
