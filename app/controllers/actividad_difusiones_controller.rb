class ActividadDifusionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_actividad_difusion, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /actividad_difusiones or /actividad_difusiones.json
  def index
    @coleccion = ActividadDifusion.all
  end

  # GET /actividad_difusiones/1 or /actividad_difusiones/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /actividad_difusiones/new
  def new
    @objeto = ActividadDifusion.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /actividad_difusiones/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /actividad_difusiones or /actividad_difusiones.json
  def create
    carga_sidebar('Ingreso Datos Anuales')
    @objeto = ActividadDifusion.new(actividad_difusion_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Actividad difusion was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividad_difusiones/1 or /actividad_difusiones/1.json
  def update
    carga_sidebar('Ingreso Datos Anuales')
    respond_to do |format|
      if @objeto.update(actividad_difusion_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Actividad difusion was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividad_difusiones/1 or /actividad_difusiones/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Actividad difusion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad_difusion
      @objeto = ActividadDifusion.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Actividades de Difusión'
    end

    # Only allow a list of trusted parameters through.
    def actividad_difusion_params
      params.require(:actividad_difusion).permit(:asociada_concurso_milenio, :organizacion, :alcance, :titulo_evento, :tipo_evento, :otro_tipo_evento, :fecha, :pais_institucion, :region_ubicacion, :descripcion_actividad, :n_asistentes_estudiantes, :n_total_asistentes, :duracion, :responsable_actividad, :propietario, publico_objetivo_ids: [], investigador_ids: [])
    end
end
