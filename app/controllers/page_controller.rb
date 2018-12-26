class PageController < ApplicationController
	before_action :authenticate_user!
	layout "prueba"
  def index
  end
end
