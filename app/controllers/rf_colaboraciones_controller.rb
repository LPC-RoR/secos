class RfColaboracionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_rf_colaboracion, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /rf_colaboraciones or /rf_colaboraciones.json
  def index
    @coleccion = RfColaboracion.all
  end

  # GET /rf_colaboraciones/1 or /rf_colaboraciones/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /rf_colaboraciones/new
  def new
    @objeto = RfColaboracion.new
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /rf_colaboraciones/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
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
    # Use callbacks to share common setup or constraints between actions.
    def set_rf_colaboracion
      @objeto = RfColaboracion.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Redes Formales de Colaboración'
    end

    # Only allow a list of trusted parameters through.
    def rf_colaboracion_params
      params.require(:rf_colaboracion).permit(:nombre_red, :objetivo, :descripcion, :alcance, :n_investigadores_milenio, :n_postdoc_estudiantes_milenio, :n_investigadores_externos, :n_postdoc_estudiantes_externos, :instituciones, :sitio_web, :fecha_inicio, :fecha_termino)
    end
end
