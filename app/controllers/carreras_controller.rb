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
    @carrera= Carrera.new(carrera_params)
    if @carrera.save
      redirect_to carreras_path
  else
    render 'new'
      end
  end

end
private
def carrera_params
  params.require(:carrera).permit(:nombrecarrera, :codigo,:facultad_id)
end