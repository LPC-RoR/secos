class LineaInvestigacionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_linea_investigacion, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /linea_investigaciones or /linea_investigaciones.json
  def index
    @coleccion = LineaInvestigacion.all
  end

  # GET /linea_investigaciones/1 or /linea_investigaciones/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /linea_investigaciones/new
  def new
    carga_sidebar('Ingreso Datos Anuales')
    @objeto = LineaInvestigacion.new
    @objeto.li_dis.build

  #  4.times { @objeto.disciplinas.build }
  end

  # GET /linea_investigaciones/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /linea_investigaciones or /linea_investigaciones.json
  def create
    @objeto = LineaInvestigacion.new(linea_investigacion_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Linea investigacion was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linea_investigaciones/1 or /linea_investigaciones/1.json
  def update
    respond_to do |format|
      if @objeto.update(linea_investigacion_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Linea investigacion was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linea_investigaciones/1 or /linea_investigaciones/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Linea investigacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linea_investigacion
      @objeto = LineaInvestigacion.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Líneas de Investigación'
    end

    # Only allow a list of trusted parameters through.
    def linea_investigacion_params
      params.require(:linea_investigacion).permit(:linea_investigacion, :objetivo, :descripcion, :conceptos_clave, :fecha_inicio, :fecha_termino, :validez, disciplina_ids: [])
    end
end
