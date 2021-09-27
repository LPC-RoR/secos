class FormacionJovenesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_formacion_joven, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /formacion_jovenes or /formacion_jovenes.json
  def index
    @coleccion = FormacionJoven.all
  end

  # GET /formacion_jovenes/1 or /formacion_jovenes/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /formacion_jovenes/new
  def new
    @objeto = FormacionJoven.new
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /formacion_jovenes/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /formacion_jovenes or /formacion_jovenes.json
  def create
    @objeto = FormacionJoven.new(formacion_joven_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Formacion joven was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formacion_jovenes/1 or /formacion_jovenes/1.json
  def update
    respond_to do |format|
      if @objeto.update(formacion_joven_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Formacion joven was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formacion_jovenes/1 or /formacion_jovenes/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Formacion joven was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formacion_joven
      @objeto = FormacionJoven.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Formación de jóvenes'
    end

    # Only allow a list of trusted parameters through.
    def formacion_joven_params
      params.require(:formacion_joven).permit(:tipo_documento, :rut_pasaporte, :nombres, :paterno, :materno, :email, :nacionalidad, :genero, :profesion_titulo_grado, :universidad_formacion, :otra_universidad_formacion, :region_universidad_formacion, :universidad_origen, :pais_universidad_origen, :fecha_nacimiento, :tipo_financiamiento, :monto, :relacion_centro, :fecha_ingreso_centro, :fecha_desvinculacion, :estado, disciplina_ids: [], investigador_ids: [])
    end
end
