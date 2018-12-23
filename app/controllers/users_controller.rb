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

  def destroy
    #@user.destroy
    
    @user.estado = false
    @user.save
      respond_to do |format|
        format.html {redirect_to users_path, notice: 'Apoderado no regular'}
      end
  
  end

  def update
      if @user.update(user_params)
        respond_to do |format|
        format.html {redirect_to user_path(@user), notice: 'Se Actualizaron los datos'}
      end
      else
        render :edit
      end
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to user_path(@user), notice: 'Se Registro Usuario'}
      else
        format.html {render :new}
      end
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