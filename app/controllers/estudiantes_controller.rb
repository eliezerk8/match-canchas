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
      
         @estudiantes= Estudiante.new
          @users = User.all
        end
    def create
     
      @sicologos=User.where(role: 'Sicologo')
      @asistentes=User.where(role: 'Asistente Social')
      @tutores =User.where(role:'Tutor')
      
      @estudiante= Estudiante.new(estudiante_params)
       params[:users].each do |k,v|
         @estudiante.users << User.find(k)
      end
      if @estudiante.save
        redirect_to estudiantes_path
    else
      render 'new'
    end

    end

    private
def estudiante_params
  params.require(:estudiante).permit(:nombre, :nem, :situacioneconomica,:colegio,:ranking, :carrera_id,:user_id,:fecha_nacimiento, :estado, :rut, :telefono, :email, :apellidopa, :apellidoma)
end

end