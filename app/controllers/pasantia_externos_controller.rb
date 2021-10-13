class PasantiaExternosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_pasantia_externo, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /pasantia_externos or /pasantia_externos.json
  def index
    @coleccion = PasantiaExterno.all
  end

  # GET /pasantia_externos/1 or /pasantia_externos/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /pasantia_externos/new
  def new
    @objeto = PasantiaExterno.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /pasantia_externos/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /pasantia_externos or /pasantia_externos.json
  def create
    carga_sidebar('Ingreso Datos Anuales')
    @objeto = PasantiaExterno.new(pasantia_externo_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pasantia externo was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pasantia_externos/1 or /pasantia_externos/1.json
  def update
    carga_sidebar('Ingreso Datos Anuales')
    respond_to do |format|
      if @objeto.update(pasantia_externo_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pasantia externo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pasantia_externos/1 or /pasantia_externos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Pasantia externo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pasantia_externo
      @objeto = PasantiaExterno.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Externos'
    end

    # Only allow a list of trusted parameters through.
    def pasantia_externo_params
      params.require(:pasantia_externo).permit(:tipo_pasante, :nombres, :paterno, :materno, :grado_academico, :pais, :institucion_procedencia, :institucion_pasantia, :region, :descripcion_pasantia, :fecha_inicio, :fecha_termino, :propietario)
    end
end
