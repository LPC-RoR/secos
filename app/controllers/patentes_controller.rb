class PatentesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_patente, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /patentes or /patentes.json
  def index
    @coleccion = Patente.all
  end

  # GET /patentes/1 or /patentes/1.json
  def show
  end

  # GET /patentes/new
  def new
    @objeto = Patente.new(propietario: current_usuario.email)
  end

  # GET /patentes/1/edit
  def edit
  end

  # POST /patentes or /patentes.json
  def create
    @objeto = Patente.new(patente_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Patente was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patentes/1 or /patentes/1.json
  def update
    respond_to do |format|
      if @objeto.update(patente_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Patente was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patentes/1 or /patentes/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Patente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_patente
      @objeto = Patente.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Patentes'
    end

    # Only allow a list of trusted parameters through.
    def patente_params
      params.require(:patente).permit(:titulo, :descripcion, :categoria, :solicitante, :inventor, :n_solicitud, :fecha_solicitud, :estado, :n_registro, :fecha_registro, :propietario, pais_ids: [])
    end
end
