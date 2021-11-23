class ProductoPmesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_producto_pme, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /producto_pmes or /producto_pmes.json
  def index
    @coleccion = ProductoPme.all
  end

  # GET /producto_pmes/1 or /producto_pmes/1.json
  def show
  end

  # GET /producto_pmes/new
  def new
    @objeto = ProductoPme.new(propietario: current_usuario.email)
  end

  # GET /producto_pmes/1/edit
  def edit
  end

  # POST /producto_pmes or /producto_pmes.json
  def create
    @objeto = ProductoPme.new(producto_pme_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Producto pme was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_pmes/1 or /producto_pmes/1.json
  def update
    respond_to do |format|
      if @objeto.update(producto_pme_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Producto pme was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_pmes/1 or /producto_pmes/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Producto pme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_producto_pme
      @objeto = ProductoPme.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/ingreso_datos_anuales?id=#{get_elemento_id(controller_name, 'Producto de PME (concurso milenio)')}" 
    end

    # Only allow a list of trusted parameters through.
    def producto_pme_params
      params.require(:producto_pme).permit(:fecha, :producto, :objetivo, :alcance, :tipo_producto, :otro_tipo_producto, :propietario, investigador_ids: [], formacion_joven_ids: [], publico_objetivo_ids: [])
    end
end
