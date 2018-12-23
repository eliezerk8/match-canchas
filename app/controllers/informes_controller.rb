class InformesController < ApplicationController
  def index
    @informes=Informe.all
  end

  def show
    @informe= Informe.find(params[:id])
  end

  def new

    @informes= Informe.new

  end

  def create
  @informe= informe.new(informe_params)
  if @informe.save
    redirect_to informes_path
  else
    render 'new'
    end
  end
end

private
def informe_params
  params.require(:informe).permit(:nota1, :nota2, :nota3, :nota4, :nota5, :promhabitos
  , :nota6, :nota7, :nota8, :nota9, :nota10, :promvocacion
  , :nota11, :nota12, :nota13, :nota14,:nota15, :promsalud
  , :observacion, :estudiante_id, :user_id, :estado)
end