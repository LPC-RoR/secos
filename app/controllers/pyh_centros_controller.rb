class PyhCentrosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_pyh_centro, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /pyh_centros or /pyh_centros.json
  def index
    @coleccion = PyhCentro.all
  end

  # GET /pyh_centros/1 or /pyh_centros/1.json
  def show
  end

  # GET /pyh_centros/new
  def new
    @objeto = PyhCentro.new(propietario: current_usuario.email)
  end

  # GET /pyh_centros/1/edit
  def edit
  end

  # POST /pyh_centros or /pyh_centros.json
  def create
    @objeto = PyhCentro.new(pyh_centro_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pyh centro was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pyh_centros/1 or /pyh_centros/1.json
  def update
    respond_to do |format|
      if @objeto.update(pyh_centro_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pyh centro was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pyh_centros/1 or /pyh_centros/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Pyh centro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_pyh_centro
      @objeto = PyhCentro.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/ingreso_datos_anuales?id=#{get_elemento_id(controller_name, 'P. y H. Centro')}" 
    end

    # Only allow a list of trusted parameters through.
    def pyh_centro_params
      params.require(:pyh_centro).permit(:premio, :fecha, :contribucion, :institucion, :pais, :propietario)
    end
end
