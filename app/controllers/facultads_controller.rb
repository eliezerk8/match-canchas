class FacultadsController < ApplicationController
    def index
    @facultades=Facultad.all
    end

    def show
     @facultad= Facultad.find(params[:id])
    end 

  end
  