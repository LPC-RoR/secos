class TesisFinalizadasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_tesis_finalizada, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /tesis_finalizadas or /tesis_finalizadas.json
  def index
    @coleccion = TesisFinalizada.all
  end

  # GET /tesis_finalizadas/1 or /tesis_finalizadas/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /tesis_finalizadas/new
  def new
    @objeto = TesisFinalizada.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /tesis_finalizadas/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /tesis_finalizadas or /tesis_finalizadas.json
  def create
    carga_sidebar('Ingreso Datos Anuales')
    @objeto = TesisFinalizada.new(tesis_finalizada_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Tesis finalizada was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tesis_finalizadas/1 or /tesis_finalizadas/1.json
  def update
    carga_sidebar('Ingreso Datos Anuales')
    respond_to do |format|
      if @objeto.update(tesis_finalizada_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Tesis finalizada was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tesis_finalizadas/1 or /tesis_finalizadas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Tesis finalizada was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tesis_finalizada
      @objeto = TesisFinalizada.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Tésis Finalizadas'
    end

    # Only allow a list of trusted parameters through.
    def tesis_finalizada_params
      params.require(:tesis_finalizada).permit(:estudiante, :nivel_formacion, :nombre_tesis, :fecha_aprobacion, :propietario, linea_investigacion_ids: [])
    end
end
