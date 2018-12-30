class InformesController < ApplicationController
  layout"prueba"
  before_action :set_informe, only: [:show,:delete,:edit,:update]
  
  
  def index
    @informes=Informe.all
    @alertas= Alerta.all
  end

  def show
  end

  def new
    @informes= Informe.new
    @alertas= Alerta.new
  end
  
  def delete
    #@user.destroy
    
    @informe.estado = false
    @informe.save
      respond_to do |format|
        format.html {redirect_to informes_path, notice: 'Informe inactivo'}
      end
  
  end
  
  def update
    if @informe.update(informe_params)
      respond_to do |format|
      format.html {redirect_to informe_path(@informe), notice: 'Se Actualizaron los datos'}
    end
    else
      render :edit
    end
  end


  def create
    @informe = Informe.new(informe_params)
    @informe.promhabitos = (@informe.nota1 + @informe.nota2 + @informe.nota3 + @informe.nota4 + @informe.nota5)/5 
    @informe.promvocacion = (@informe.nota6 + @informe.nota7 + @informe.nota8 + @informe.nota9 + @informe.nota10)/5 
    @informe.promsalud = (@informe.nota11 + @informe.nota12 + @informe.nota13 + @informe.nota14 + @informe.nota15)/5 
    
   
    
    
    respond_to do |format|
      if @informe.save
        format.html {redirect_to informe_path(@informe), notice: 'Informe Creado'}
        
        @alertas = Alerta.new(alerta_params)
        if @informe.promhabitos<5 
      
          @alertas.informe_id = @informe.id
          @alertas.save
        end
       
      
      else
        format.html {render :new}
      end
    end
  end

    
   
  

  private

  def informe_params
  params.require(:informe).permit(:nota1, :nota2, :nota3, :nota4, :nota5, :promhabitos, :nota6, :nota7, :nota8, :nota9, :nota10, :promvocacion, :nota11, :nota12, :nota13, :nota14,:nota15, :promsalud, :observacion, :estudiante_id, :user_id, :estado)
  end

  def alerta_params
  params.permit(:estado, :fecharecepcion, :prioridad_id, :informe_id )
  end

  def set_informe
    @informe = Informe.find(params[:id])
  end
  
 


end
