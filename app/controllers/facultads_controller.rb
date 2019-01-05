class FacultadsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_facultad, only: [:show,:delete,:edit,:update]

  layout "prueba"
  def index
    @facultades=Facultad.all
    @facultads= Facultad.new
  end

  def show
    @facultad= Facultad.find(params[:id])
  end 
  
  def delete
    #@user.destroy
    
    @facultad.estado = false
    @facultad.save
      redirect_to facultads_path, success: "Facultad no existente"
  end
  
  def update
      if @facultad.update(facultad_params)
        redirect_to facultad_path, success: "Se Actualizaron los datos"
      else
        render :edit , danger: "Modifique por valores válidos"
      end
  end

  def edit
  end
   

  def new
   @facultads= Facultad.new
  end

  def create
    @facultad= Facultad.new(facultad_params)
    if @facultad.save
      redirect_to facultads_path, success: "Se creo correctamente"
    else
    render 'new' ,danger:"Ingrese datos Validos"
    end
  end
  

  private
    def facultad_params
      params.require(:facultad).permit(:nombrefacultad, :estado)
    end

    def set_facultad
      @facultad = Facultad.find(params[:id])
    end


  end