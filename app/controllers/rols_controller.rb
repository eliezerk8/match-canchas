class RolsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_facultad, only: [:show,:delete,:edit,:update]

  layout "prueba"
    def index
        @roles=Rol.all
        @rols= Rol.new
        end
      
        def show
         @rol= Rol.find(params[:id])
        end 
      
        def new
      
         @rols= Rol.new
      
        end

  def create
    @rol= Rol.new(rol_params)
    if @rol.save
      redirect_to rols_path ,success:"Se creo correctamente"
    else
      render 'new' , danger: "Ingrese datos válidos"
    end
  end
private
def rol_params
  params.require(:rol).permit(:descripcion, :estado)
end


end