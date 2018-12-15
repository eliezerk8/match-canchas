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
    @informe= Informe.new(estudianteid: params[:informe][:estudianteid],
                          prompsicologico: params[:informe][:prompsicologico],
                          promsalud: params[:informe][:promsalud],
                          promhabitos: params[:informe][:promhabitos],
                          nota1: params[:informe][:nota1],
                          nota2: params[:informe][:nota1],
                          nota3: params[:informe][:nota1],
                          nota4: params[:informe][:nota1],
                          nota5: params[:informe][:nota1],
                          nota6: params[:informe][:nota1],
                          nota7: params[:informe][:nota1],
                          nota8: params[:informe][:nota1],
                          nota9: params[:informe][:nota1],
                          nota10: params[:informe][:nota1],
                          nota11: params[:informe][:nota1],
                          nota12: params[:informe][:nota1],
                          nota13: params[:informe][:nota1],
                          nota14: params[:informe][:nota1],
                          nota15: params[:informe][:nota1])
    @informe.save
    redirect_to @informe
  end
end
