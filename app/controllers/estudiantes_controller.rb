class EstudiantesController < ApplicationController
  
    def index
        @estudiantes=Estudiante.all
        end
      
        def show
         @estudiante= Estudiante.find(params[:id])
        end 
      
        def new
      
         @estudiantes= Estudiante.new
      
        end
    def create
      @estudiante= Estudiante.new(estudiante_params)
      if @estudiante.save
        redirect_to estudiantes_path
    else
      render 'new'
    end

    end

    private
def estudiante_params
  params.require(:estudiante).permit(:nombre, :nem, :situacioneconomica, :ranking ,:colegio, usuarioid, :carrera_id)
end

end