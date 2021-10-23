class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def new
    
  end

  def create
    @apartment = Apartment.new(
      id: params[:id],
      numero_departamento: params[:numero_departamento],
      building_id: params[:building_id],
    )

    respond_to do |format|
      if @apartment.save
        format.html { redirect_to departamentos_url, notice: "Departamento creado con exito" }
      end
    end    
  end

end
