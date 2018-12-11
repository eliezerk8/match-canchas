class RolsController < ApplicationController
  
    def index
        @rols=Rol.all
        end
      
        def show
         @rol= Rol.find(params[:id])
        end 
      
        def new
      
         @rols= Rol.new
      
        end
      
        def create
          @rol= Rol.new(descripcion: params[:rol][:descripcion])
          @rol.save
          redirect_to @rol
        end
     


end