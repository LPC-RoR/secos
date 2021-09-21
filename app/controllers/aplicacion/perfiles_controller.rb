class Aplicacion::PerfilesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_perfil, only: [:show, :edit, :update, :destroy, :desvincular]

  include Sidebar

  # GET /perfiles
  # GET /perfiles.json
  def index
    @coleccion = Perfil.all
  end

  # GET /perfiles/1
  # GET /perfiles/1.json
  def show
    carga_sidebar('Administración')
  end

  # GET /perfiles/new
  def new
    @objeto = Perfil.new
    carga_sidebar('Administración')
  end

  # GET /perfiles/1/edit
  def edit
    carga_sidebar('Administración')
  end

  # POST /perfiles
  # POST /perfiles.json
  def create
    @objeto = Perfil.new(perfil_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: 'Perfil was successfully created.' }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfiles/1
  # PATCH/PUT /perfiles/1.json
  def update
    respond_to do |format|
      if @objeto.update(perfil_params)
        format.html { redirect_to @objeto, notice: 'Perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  def desvincular
    proyecto = Proyecto.find(params[:objeto_id])
    @objeto.colaboraciones.delete(proyecto)

    redirect_to '/proyectos/proyecto_activo'
  end

  # DELETE /perfiles/1
  # DELETE /perfiles/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to perfiles_url, notice: 'Perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfil
      @objeto = Perfil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perfil_params
      params.require(:perfil).permit(:usuario_id, :administrador_id, :investigador_id, :equipo_id, :email)
    end
end
