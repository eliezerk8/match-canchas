class UsersController < ApplicationController
  layout"prueba"
  before_action :set_user, only: [:show,:delete,:edit,:update]

  def index
    @users = User.all
  end

  def new
    @user= User.new
  end

  def show
  end

  def delete
    #@user.destroy
    
    @user.estado = false
    @user.save
        redirect_to users_path, success: "Apoderado no regular"
  end


  def update
    if @user.update(user_params)
      redirect_to edit_user_path, success: "Se Actualizaron los datos"
    else
      redirect_to edit_user_path, danger: "No se genero el cambio"
    end
  end

  def edit
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to user_path, success: "Se Registro Usuario"
      else
        redirect_to new_user_path, danger: "Faltaron Campos Por Registrar"
      end
  end


  private

  def user_params
    params.require(:user).permit(:nombre, :apellidopa, :apellidoma, :rut, :fecha_nacimiento, :facultad_id, :telefono, :email, :password, :password_confirmation, :rol_id, :estado)
    
  end

  def set_user
    @user = User.find(params[:id])
  end
end