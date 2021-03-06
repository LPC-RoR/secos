class AcosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_aco, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /acos or /acos.json
  def index
    @coleccion = Aco.all
  end

  # GET /acos/1 or /acos/1.json
  def show
  end

  # GET /acos/new
  def new
    @objeto = Aco.new(propietario: current_usuario.email)
  end

  # GET /acos/1/edit
  def edit
  end

  # POST /acos or /acos.json
  def create
    @objeto = Aco.new(aco_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Aco was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acos/1 or /acos/1.json
  def update
    respond_to do |format|
      if @objeto.update(aco_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Aco was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acos/1 or /acos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Aco was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_aco
      @objeto = Aco.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/ingreso_datos_anuales?id=#{get_elemento_id(controller_name, 'Actividades Cient??ficas Organizadas')}" 
    end

    # Only allow a list of trusted parameters through.
    def aco_params
      params.require(:aco).permit(:titulo_evento, :tipo_evento, :otro_tipo_evento, :alcance, :duracion_dias, :fecha_inicio, :fecha_termino, :pais, :ciudad, :n_asistentes, :n_expositores_milenio, :n_expositores_extranjeros, :n_expositores_nacionales, :investigador_responsable, :propietario, publico_objetivo_ids: [])
    end
end
