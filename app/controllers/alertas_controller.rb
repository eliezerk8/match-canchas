class AlertasController < ApplicationController
layout "prueba"
def index
	@alertas= Alerta.all
end

def show
    @alerta=Alerta.find(params[:id])
end

end