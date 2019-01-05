class CarrerasController < ApplicationController
  before_action :set_carrera, only: [:show,:delete,:edit,:update]
  layout "prueba"
  def index
    @todocarrera= Carrera.all
    @carreras= Carrera.new

  end
  
  def new
    @carreras= Carrera.new
   end



  def show
    @carrera= Carrera.find(params[:id])
  end

  def delete
    #@user.destroy
    
    @carrera.estado = false
    @carrera.save
      redirect_to carreras_path, success: "Carrera no existente"
  end

  def update
      if @carrera.update(carrera_params)
        redirect_to carrera_path, success: "Se Actualizaron los datos"
      else
        render :edit ,danger: "Modifique por valores válidos"
      end
  end

  def edit
  end
   


  def create
    @carrera= Carrera.new(carrera_params)
    if @carrera.save
      redirect_to carreras_path, success: "Se creo correctamente"
    else
      redirect_to new_carrera_path, danger: "Complete correctamente el formulario"
    end
  end





 private
  def carrera_params
  params.require(:carrera).permit(:nombrecarrera, :codigo, :facultad_id, :estado)
  end

  def set_carrera
    @carrera = Carrera.find(params[:id])
  end


end