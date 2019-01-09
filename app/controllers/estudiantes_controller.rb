class EstudiantesController < ApplicationController
  layout"prueba"
    def index
        @estudiantes=Estudiante.all
        @users=User.all
        end
      
        def show
         @estudiante= Estudiante.find(params[:id])
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
  params.require(:estudiante).permit(:nombreestudiante, :nem, :situacioneconomica,:colegio,:ranking, :carrera_id,:user_id,:fecha_nacimiento, :estado, :rut, :telefono, :email, :apellidopa, :apellidoma, :comuna, :direccion)
end

end