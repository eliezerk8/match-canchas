class AlertasController < ApplicationController
layout "prueba"
def index
	@alertas= Alerta.all
end
