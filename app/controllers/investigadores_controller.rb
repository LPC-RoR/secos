class InvestigadoresController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_investigador, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /investigadores or /investigadores.json
  def index
    @coleccion = Investigador.all
  end

  # GET /investigadores/1 or /investigadores/1.json
  def show
  end

  # GET /investigadores/new
  def new
    @objeto = Investigador.new(propietario: current_usuario.email)
  end

  # GET /investigadores/1/edit
  def edit
  end

  # POST /investigadores or /investigadores.json
  def create
    @objeto = Investigador.new(investigador_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Investigador was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigadores/1 or /investigadores/1.json
  def update
    respond_to do |format|
      if @objeto.update(investigador_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Investigador was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigadores/1 or /investigadores/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Investigador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_investigador
      @objeto = Investigador.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/ingreso_datos_anuales?id=#{get_elemento_id(controller_name, 'Investigadores Centro')}" 
    end

    # Only allow a list of trusted parameters through.
    def investigador_params
      params.require(:investigador).permit(:tipo_documento, :rut_pasaporte, :nombres, :paterno, :materno, :direccion_correspondencia, :comuna, :region, :fecha_nacimiento, :genero, :categoria, :nacionalidad, :horas_dedicacion, :profesion, :otra_profesion, :institucion, :cargo, :email, :telefono_1, :telefono_2, :celular, :fuente_financiamiento, :relacion_centro, :fecha_inicio, :fecha_termino, :vigencia, :propietario, grado_academico_ids: [], linea_investigacion_ids: [], disciplina_ids: [], nivel_formaciones_attributes: [:nivel_en_formacion, :titulo_grado, :descripcion, :fecha_inicio, :fecha_obtencion, :_destroy])
    end
end
