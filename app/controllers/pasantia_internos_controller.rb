class PasantiaInternosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_pasantia_interno, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /pasantia_internos or /pasantia_internos.json
  def index
    @coleccion = PasantiaInterno.all
  end

  # GET /pasantia_internos/1 or /pasantia_internos/1.json
  def show
  end

  # GET /pasantia_internos/new
  def new
    @objeto = PasantiaInterno.new(propietario: current_usuario.email)
  end

  # GET /pasantia_internos/1/edit
  def edit
  end

  # POST /pasantia_internos or /pasantia_internos.json
  def create
    @objeto = PasantiaInterno.new(pasantia_interno_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pasantia interno was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pasantia_internos/1 or /pasantia_internos/1.json
  def update
    respond_to do |format|
      if @objeto.update(pasantia_interno_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pasantia interno was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pasantia_internos/1 or /pasantia_internos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Pasantia interno was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_pasantia_interno
      @objeto = PasantiaInterno.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Internos'
    end

    # Only allow a list of trusted parameters through.
    def pasantia_interno_params
      params.require(:pasantia_interno).permit(:estudiante, :institucion, :pais, :tutor, :proyecto, :descripcion, :fecha_inicio, :fecha_termino, :unidad_departamento, :propietario)
    end
end
