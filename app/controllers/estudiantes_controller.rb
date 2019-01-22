class EstudiantesController < ApplicationController
  layout"prueba"
  before_action :set_estudiante, only: [:show,:delete,:edit,:update]
    def index
        @estudiantes=Estudiante.all
        @users=User.all
        end
      
        def show
         @estudiante= Estudiante.find(params[:id])
        end 
      

        def delete
          #@user.destroy
          @estudiante.estado = false
          @estudiante.save
              redirect_to estudiante_path, success: "Se ha desvinculado el usuario"
        end
      
      
        def update
          respond_to do |format| 
          if @estudiante.update(estudiante_params)
            format.html { redirect_to estudiantes_path, success: "Se Actualizaron los datos"}
          else
            format.html { redirect_to edit_estudiante_path, danger: "No se genero el cambio"}
          end
            end
            end

        def edit
          @estudiante = Estudiante.find(params[:id])
         
        end


        def new
      
         @estudiante= Estudiante.new
         @users = User.all
   
       

        end
    def create
   
      
      @estudiante= Estudiante.new(estudiante_params)
       
      respond_to do |format| 
      if @estudiante.save
      format.html {redirect_to estudiantes_path, success: "Se Registro Estudiante"}
      else
      format.html {render :new}
      end
      end
    end

    private
def estudiante_params
  params.require(:estudiante).permit(:nombreestudiante, :nem, :situacioneconomica,:colegio,:ranking, :carrera_id,:user_id,:fecha_nacimiento, :estado, :rut, :telefono, :email, :apellidopa, :apellidoma, :comuna, :direccion, :users_id)
end

def set_estudiante
  @estudiante = Estudiante.find(params[:id])
end



end