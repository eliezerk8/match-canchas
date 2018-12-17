class CarrerasController < ApplicationController
    layout "prueba"
    def index
        @todocarrera= Carrera.all
        @carreras= Carrera.new
        
    end

    def show
        @carrera= Carrera.find(params[:id])
       end 
     
       def new
     
        @carrera= Carrera.new
     
       end
     
       def create
         @carrera= Carrera.new(nombrecarrera: params[:carrera][:nombrecarrera],
                                                  codigo: params[:carrera][:codigo],
                                          facultadid: params[:carrera][:facultadid])
        if @carrera.save
         redirect_to @carrera
         else
         render :new
        end
   end
end