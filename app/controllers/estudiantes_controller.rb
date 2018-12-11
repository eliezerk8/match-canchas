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
          @estudiante= Estudiante.new(nombreestudiante: params[:estudiante][:nombreestudiante],
                                                   nem: params[:estudiante][:nem],
                                situacioneconomica: params[:estudiante][:situacioneconomica],   
                                           colegio: params[:estudiante][:colegio],
                                           ranking: params[:estudiante][:ranking])
          @estudiante.save
          redirect_to @estudiante
        end
     


end