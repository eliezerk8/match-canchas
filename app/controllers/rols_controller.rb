class RolsController < ApplicationController
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
      redirect_to rols_path
    else
      render 'new'
    end
  end
private
def rol_params
  params.require(:rol).permit(:descripcion, :estado)
end


end