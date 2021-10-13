class FuenteFinanciamientosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_fuente_financiamiento, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /fuente_financiamientos or /fuente_financiamientos.json
  def index
    @coleccion = FuenteFinanciamiento.all
  end

  # GET /fuente_financiamientos/1 or /fuente_financiamientos/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /fuente_financiamientos/new
  def new
    @objeto = FuenteFinanciamiento.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /fuente_financiamientos/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /fuente_financiamientos or /fuente_financiamientos.json
  def create
    carga_sidebar('Ingreso Datos Anuales')
    @objeto = FuenteFinanciamiento.new(fuente_financiamiento_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Fuente financiamiento was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuente_financiamientos/1 or /fuente_financiamientos/1.json
  def update
    carga_sidebar('Ingreso Datos Anuales')
    respond_to do |format|
      if @objeto.update(fuente_financiamiento_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Fuente financiamiento was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuente_financiamientos/1 or /fuente_financiamientos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Fuente financiamiento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuente_financiamiento
      @objeto = FuenteFinanciamiento.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Fuentes de Financiamiento'
    end

    # Only allow a list of trusted parameters through.
    def fuente_financiamiento_params
      params.require(:fuente_financiamiento).permit(:fondos, :otro_fondo, :monto_pesos, :propietario)
    end
end
