class CarrerasController < ApplicationController
    def index
        Carrera.all
    end
end