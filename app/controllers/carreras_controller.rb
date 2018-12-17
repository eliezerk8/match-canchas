class CarrerasController < ApplicationController
    def index
        Carrera.all
    end

    def show
        @carreras= Carrera.find(params[:id])
       end 
     
       def new
     
        @carreras= Carrera.new
     
       end
     
       def create
         @carreras= Carrera.new(nombrecarrera: params[:carrera][:nombrecarrera],
                                                  codigo: params[:carrera][:codigo],
                                          facultadid: params[:carrera][:facultadid])
         @carreras.save
         redirect_to @carreras
       end



end