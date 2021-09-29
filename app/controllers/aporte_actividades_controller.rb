class AporteActividadesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_aporte_actividad, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /aporte_actividades or /aporte_actividades.json
  def index
    @coleccion = AporteActividad.all
  end

  # GET /aporte_actividades/1 or /aporte_actividades/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /aporte_actividades/new
  def new
    @objeto = AporteActividad.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /aporte_actividades/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /aporte_actividades or /aporte_actividades.json
  def create
    @objeto = AporteActividad.new(aporte_actividad_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Aporte actividad was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aporte_actividades/1 or /aporte_actividades/1.json
  def update
    respond_to do |format|
      if @objeto.update(aporte_actividad_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Aporte actividad was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aporte_actividades/1 or /aporte_actividades/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Aporte actividad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aporte_actividad
      @objeto = AporteActividad.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Fondos Actividades de Difusión (concurso milenio)'
    end

    # Only allow a list of trusted parameters through.
    def aporte_actividad_params
      params.require(:aporte_actividad).permit(:tipo, :actividad_producto, :colaborador, :tipo_colaboracion, :monto, :propietario)
    end
end
