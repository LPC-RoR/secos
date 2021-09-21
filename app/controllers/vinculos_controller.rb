class VinculosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_vinculo, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /vinculos or /vinculos.json
  def index
    @coleccion = Vinculo.all
  end

  # GET /vinculos/1 or /vinculos/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /vinculos/new
  def new
    @objeto = Vinculo.new
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /vinculos/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /vinculos or /vinculos.json
  def create
    @objeto = Vinculo.new(vinculo_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Vinculo was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinculos/1 or /vinculos/1.json
  def update
    respond_to do |format|
      if @objeto.update(vinculo_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Vinculo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vinculos/1 or /vinculos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Vinculo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vinculo
      @objeto = Vinculo.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Vínculos con Otros Sectores'
    end

    # Only allow a list of trusted parameters through.
    def vinculo_params
      params.require(:vinculo).permit(:actividad, :tipo_conexion, :tipo_actividad, :otro_tipo_actividad, :objetivo_actividad, :fecha_inicio, :fecha_termino, :investigador_encargado, :fondos_pesos, :fondos_dolares, :costo_vinculo_pesos, :costo_vinculo_dolares, :nombre_institucion, :pais_institucion, :region_institucion, :ciudad, :tipo_institucion, :otro_tipo_institucion, :sector_economico, :otro_sector_economico)
    end
end
