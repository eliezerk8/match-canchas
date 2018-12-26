class FacultadsController < ApplicationController
  before_action :authenticate_user!
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
    @facultad= Facultad.new(facultad_params)
    if @facultad.save
      redirect_to facultads_path
  else
    render 'new'
  end

  end
end
  private
    def facultad_params
      params.require(:facultad).permit(:nombrefacultad)
    end
