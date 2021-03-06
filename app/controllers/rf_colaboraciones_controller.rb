class RfColaboracionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_rf_colaboracion, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /rf_colaboraciones or /rf_colaboraciones.json
  def index
    @coleccion = RfColaboracion.all
  end

  # GET /rf_colaboraciones/1 or /rf_colaboraciones/1.json
  def show
  end

  # GET /rf_colaboraciones/new
  def new
    @objeto = RfColaboracion.new(propietario: current_usuario.email)
  end

  # GET /rf_colaboraciones/1/edit
  def edit
  end

  # POST /rf_colaboraciones or /rf_colaboraciones.json
  def create
    @objeto = RfColaboracion.new(rf_colaboracion_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Rf colaboracion was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rf_colaboraciones/1 or /rf_colaboraciones/1.json
  def update
    respond_to do |format|
      if @objeto.update(rf_colaboracion_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Rf colaboracion was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rf_colaboraciones/1 or /rf_colaboraciones/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Rf colaboracion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_rf_colaboracion
      @objeto = RfColaboracion.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/ingreso_datos_anuales?id=#{get_elemento_id(controller_name, 'Redes Formales de Colaboraci??n')}" 
    end

    # Only allow a list of trusted parameters through.
    def rf_colaboracion_params
      params.require(:rf_colaboracion).permit(:nombre_red, :objetivo, :descripcion, :alcance, :n_investigadores_milenio, :n_postdoc_estudiantes_milenio, :n_investigadores_externos, :n_postdoc_estudiantes_externos, :instituciones, :sitio_web, :fecha_inicio, :fecha_termino, :propietario, investigador_ids: [], formacion_joven_ids: [])
    end
end
