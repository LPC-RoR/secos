class ArticuloEntrevistasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_articulo_entrevista, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /articulo_entrevistas or /articulo_entrevistas.json
  def index
    @coleccion = ArticuloEntrevista.all
  end

  # GET /articulo_entrevistas/1 or /articulo_entrevistas/1.json
  def show
  end

  # GET /articulo_entrevistas/new
  def new
    @objeto = ArticuloEntrevista.new(propietario: current_usuario.email)
  end

  # GET /articulo_entrevistas/1/edit
  def edit
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
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_articulo_entrevista
      @objeto = ArticuloEntrevista.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/ingreso_datos_anuales?id=#{get_elemento_id(controller_name, 'Art??culos y Entrevistas en Medios de Comunicaci??n')}" 
    end

    # Only allow a list of trusted parameters through.
    def articulo_entrevista_params
      params.require(:articulo_entrevista).permit(:tema, :actividad, :descripcion, :tipo_medio, :nombre_medio, :seccion, :fecha_publicacion, :alcance, :link, :adjunto, :propietario, publico_objetivo_ids: [], linea_investigacion_ids: [], investigador_ids: [])
    end
end
