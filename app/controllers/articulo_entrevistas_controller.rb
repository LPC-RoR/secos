class ArticuloEntrevistasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_articulo_entrevista, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /articulo_entrevistas or /articulo_entrevistas.json
  def index
    @coleccion = ArticuloEntrevista.all
  end

  # GET /articulo_entrevistas/1 or /articulo_entrevistas/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /articulo_entrevistas/new
  def new
    @objeto = ArticuloEntrevista.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /articulo_entrevistas/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /articulo_entrevistas or /articulo_entrevistas.json
  def create
    @objeto = ArticuloEntrevista.new(articulo_entrevista_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Articulo entrevista was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articulo_entrevistas/1 or /articulo_entrevistas/1.json
  def update
    respond_to do |format|
      if @objeto.update(articulo_entrevista_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Articulo entrevista was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulo_entrevistas/1 or /articulo_entrevistas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Articulo entrevista was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo_entrevista
      @objeto = ArticuloEntrevista.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Artículos y Entrevistas en Medios de Comunicación'
    end

    # Only allow a list of trusted parameters through.
    def articulo_entrevista_params
      params.require(:articulo_entrevista).permit(:tema, :actividad, :descripcion, :tipo_medio, :nombre_medio, :seccion, :fecha_publicacion, :alcance, :link, :adjunto, :propietario, publico_objetivo_ids: [], linea_investigacion_ids: [], investigador_ids: [])
    end
end
