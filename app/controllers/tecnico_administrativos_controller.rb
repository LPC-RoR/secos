class TecnicoAdministrativosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_tecnico_administrativo, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /tecnico_administrativos or /tecnico_administrativos.json
  def index
    @coleccion = TecnicoAdministrativo.all
  end

  # GET /tecnico_administrativos/1 or /tecnico_administrativos/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /tecnico_administrativos/new
  def new
    @objeto = TecnicoAdministrativo.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /tecnico_administrativos/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /tecnico_administrativos or /tecnico_administrativos.json
  def create
    @objeto = TecnicoAdministrativo.new(tecnico_administrativo_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Tecnico administrativo was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnico_administrativos/1 or /tecnico_administrativos/1.json
  def update
    respond_to do |format|
      if @objeto.update(tecnico_administrativo_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Tecnico administrativo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnico_administrativos/1 or /tecnico_administrativos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Tecnico administrativo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecnico_administrativo
      @objeto = TecnicoAdministrativo.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Personal Técnico y Administrativo'
    end

    # Only allow a list of trusted parameters through.
    def tecnico_administrativo_params
      params.require(:tecnico_administrativo).permit(:tipo_documento, :rut_pasaporte, :nombres, :paterno, :materno, :fecha_nacimiento, :nacionalidad, :genero, :categoria, :relacion_centro, :tipo_financiamiento, :fecha_ingreso, :fecha_desvinculacion, :propietario)
    end
end
