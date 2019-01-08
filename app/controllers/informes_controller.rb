class InformesController < ApplicationController
  layout"prueba"
  before_action :set_informe, only: [:show,:delete,:edit,:update]
  
  
  def index
    @informes=Informe.all
    @alertas= Alerta.all
  
    
  end

  def show
    @informe= Informe.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'informes/reporte', pdf:'Reporte'}

    end
  end

  def new
    @informes= Informe.new
    @alertas= Alerta.new
  end
  
  def delete
    #@user.destroy
    
    @informe.estado = false
    @informe.save
      redirect_to informes_path, success: "Informe inactivo"
      
  
  end
  
  def update
    if @informe.update(informe_params)
      redirect_to informe_path, success: "Se Actualizaron los datos"
    else
      render :edit, danger: "Modifique por valores válidos"
    end
  end


  def create
      @informe = Informe.new(informe_params)
      @informe.user_id=current_user.id
      if @informe.save
        @informe.promhabitos = ((@informe.nota1 + @informe.nota2 + @informe.nota3 + @informe.nota4 + @informe.nota5)/5)
        @informe.promvocacion = ((@informe.nota6 + @informe.nota7 + @informe.nota8 + @informe.nota9 + @informe.nota10)/5 )
        @informe.promsalud = ((@informe.nota11 + @informe.nota12 + @informe.nota13 + @informe.nota14 + @informe.nota15)/5 )
        @informe.save
           @alertas = Alerta.new(alerta_params)
          if ( (@informe.promhabitos<5 && @informe.promhabitos>=4) || (@informe.promvocacion<5 && @informe.promvocacion>=4) || (@informe.promsalud<5 && @informe.promsalud>=4)||(@informe.nota1<=3)||(@informe.nota2<=3)||(@informe.nota3<=3)||(@informe.nota4<=3)||(@informe.nota5<=3)||(@informe.nota6<=3)||(@informe.nota7<=3)||(@informe.nota8<=3)||(@informe.nota9<=3)||(@informe.nota10<=3)||(@informe.nota11<=3)||(@informe.nota12<=3)||(@informe.nota13<=3)||(@informe.nota14<=3)||(@informe.nota15<=3)) 
          @alertas.prioridad= 'Baja'
          end    
      
          if ( (@informe.promhabitos<4 && @informe.promhabitos>=3) || (@informe.promvocacion<4 && @informe.promvocacion>=3) || (@informe.promsalud<4 && @informe.promsalud>=3)|| (@informe.nota1<=3 && @informe.nota2<=3) || (@informe.nota1<=3 && @informe.nota3<=3) || (@informe.nota1<=3 && @informe.nota4<=3) || (@informe.nota1<=3 && @informe.nota5<=3)|| (@informe.nota2<=3 && @informe.nota3<=3) || (@informe.nota2<=3 && @informe.nota4<=3) || (@informe.nota2<=3 && @informe.nota5<=3) || (@informe.nota3<=3 && @informe.nota4<=3) || (@informe.nota3<=3 && @informe.nota5<=3) || (@informe.nota4<=3 && @informe.nota5<=3)|| (@informe.nota6<=3 && @informe.nota7<=3) || (@informe.nota6<=3 && @informe.nota8<=3) || (@informe.nota6<=3 && @informe.nota9<=3) ||(@informe.nota6<=3 && @informe.nota10<=3)|| (@informe.nota7<=3 && @informe.nota8<=3) || (@informe.nota7<=3 && @informe.nota9<=3) ||(@informe.nota7<=3 && @informe.nota10<=3)|| (@informe.nota8<=3 && @informe.nota9<=3) ||(@informe.nota8<=3 && @informe.nota10<=3)||(@informe.nota9<=3 && @informe.nota10<=3) ||(@informe.nota11<=3 && @informe.nota12<=3)||(@informe.nota11<=3 && @informe.nota13<=3)||(@informe.nota11<=3 && @informe.nota14<=3)||(@informe.nota11<=3 && @informe.nota15<=3) ||(@informe.nota12<=3 && @informe.nota13<=3)||(@informe.nota12<=3 && @informe.nota14<=3)||(@informe.nota12<=3 && @informe.nota15<=3)||(@informe.nota13<=3 && @informe.nota14<=3)||(@informe.nota12<=3 && @informe.nota15<=3)||(@informe.nota14<=3 && @informe.nota15<=3))
             
          
             @alertas.prioridad = 'Media'
          end 

          if ( (@informe.promhabitos<3 && @informe.promhabitos>=1) || (@informe.promvocacion<3 && @informe.promvocacion>=1) || (@informe.promsalud<3 && @informe.promsalud>=1)||(@informe.nota1<=3 && @informe.nota2<=3 && @informe.nota3<=3)||(@informe.nota1<=3 && @informe.nota2<=3 && @informe.nota4<=3)||(@informe.nota1<=3 && @informe.nota2<=3 && @informe.nota5<=3)||(@informe.nota1<=3 && @informe.nota3<=3 && @informe.nota4<=3)||(@informe.nota1<=3 && @informe.nota3<=3 && @informe.nota5<=3)||(@informe.nota1<=3 && @informe.nota4<=3 && @informe.nota5<=3)||(@informe.nota2<=3 && @informe.nota3<=3 && @informe.nota4<=3)||(@informe.nota2<=3 && @informe.nota4<=3 && @informe.nota5<=3)||(@informe.nota2<=3 && @informe.nota4<=3 && @informe.nota5<=3)||(@informe.nota3<=3 && @informe.nota4<=3 && @informe.nota4<=3)||(@informe.nota6<=3 && @informe.nota7<=3 && @informe.nota8<=3)||(@informe.nota6<=3 && @informe.nota7<=3 && @informe.nota9<=3)||(@informe.nota6<=3 && @informe.nota7<=3 && @informe.nota10<=3)||(@informe.nota6<=3 && @informe.nota8<=3 && @informe.nota9<=3)||(@informe.nota6<=3 && @informe.nota8<=3 && @informe.nota10<=3)||(@informe.nota6<=3 && @informe.nota9<=3 && @informe.nota10<=3)||(@informe.nota7<=3 && @informe.nota8<=3 && @informe.nota9<=3)||(@informe.nota7<=3 && @informe.nota8<=3 && @informe.nota10<=3)||(@informe.nota7<=3 && @informe.nota9<=3 && @informe.nota10<=3)||(@informe.nota8<=3 && @informe.nota9<=3 && @informe.nota10<=3)||(@informe.nota11<=3 && @informe.nota12<=3 && @informe.nota13<=3)||(@informe.nota11<=3 && @informe.nota12<=3 && @informe.nota14<=3)||(@informe.nota11<=3 && @informe.nota12<=3 && @informe.nota15<=3)||(@informe.nota11<=3 && @informe.nota13<=3 && @informe.nota14<=3)||(@informe.nota11<=3 && @informe.nota13<=3 && @informe.nota15<=3)||(@informe.nota11<=3 && @informe.nota14<=3 && @informe.nota15<=3)||(@informe.nota12<=3 && @informe.nota13<=3 && @informe.nota14<=3)||(@informe.nota12<=3 && @informe.nota13<=3 && @informe.nota15<=3)||(@informe.nota12<=3 && @informe.nota14<=3 && @informe.nota15<=3)||(@informe.nota13<=3 && @informe.nota14<=3 && @informe.nota15<=3))

            @alertas.prioridad = 'Alta'
         
        
        
        
          end 



      @alertas.informe_id = @informe.id
      @alertas.save
      redirect_to informe_path, success: "Informe Creado"
      else
      redirect_to new_informe_path, danger: "No se logro crear el informe"
      end

  end
  
  
   
  

  private

  def informe_params
  params.require(:informe).permit(:nota1, :nota2, :nota3, :nota4, :nota5, :promhabitos, :nota6, :nota7, :nota8, :nota9, :nota10, :promvocacion, :nota11, :nota12, :nota13, :nota14,:nota15, :promsalud, :observacion, :estudiante_id, :user_id, :estado)
  end

  def alerta_params
  params.permit(:estado, :fecharecepcion, :prioridad, :informe_id )
  end

  def set_informe
    @informe = Informe.find(params[:id])
  end
  
 


end
