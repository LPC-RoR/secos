class PresentacionCongresosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_presentacion_congreso, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /presentacion_congresos or /presentacion_congresos.json
  def index
    @coleccion = PresentacionCongreso.all
  end

  # GET /presentacion_congresos/1 or /presentacion_congresos/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /presentacion_congresos/new
  def new
    @objeto = PresentacionCongreso.new
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /presentacion_congresos/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /presentacion_congresos or /presentacion_congresos.json
  def create
    @objeto = PresentacionCongreso.new(presentacion_congreso_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Presentacion congreso was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentacion_congresos/1 or /presentacion_congresos/1.json
  def update
    respond_to do |format|
      if @objeto.update(presentacion_congreso_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Presentacion congreso was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentacion_congresos/1 or /presentacion_congresos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Presentacion congreso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentacion_congreso
      @objeto = PresentacionCongreso.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Presentaciones Congresos'
    end

    # Only allow a list of trusted parameters through.
    def presentacion_congreso_params
      params.require(:presentacion_congreso).permit(:alcance, :tipo, :otro_tipo, :organizacion, :nombre_presentacion, :nombre_evento, :link_presentacion, :fecha, :ciudad, :pais, asociado_ids: [], otro_ids: [], formacion_joven_ids: [])
    end
end
