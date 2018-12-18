class FacultadsController < ApplicationController
  layout "prueba"
  def index
  @facultades=Facultad.all
  @facultads= Facultad.new

  end

  def show
   @facultad= Facultad.find(params[:id])
  end 

  def new

   @facultads= Facultad.new

  end

  def create
    @facultad= Facultad.new(nombrefacultad: params[:facultad][:nombrefacultad])
    @facultad.save
    redirect_to @facultad
  end
end