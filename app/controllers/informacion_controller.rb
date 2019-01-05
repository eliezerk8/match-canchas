class InformacionController < ApplicationController
  #before_action :authenticate_user!
  layout "prueba"
  def index
  	@users = User.all
  end
end
