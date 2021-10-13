class PublicacionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_publicacion, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /publicaciones or /publicaciones.json
  def index
    @coleccion = Publicacion.all
  end

  # GET /publicaciones/1 or /publicaciones/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /publicaciones/new
  def new
    @objeto = Publicacion.new(propietario: current_usuario.email)
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /publicaciones/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /publicaciones or /publicaciones.json
  def create
    carga_sidebar('Ingreso Datos Anuales')
    @objeto = Publicacion.new(publicacion_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Publicacion was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicaciones/1 or /publicaciones/1.json
  def update
    carga_sidebar('Ingreso Datos Anuales')
    respond_to do |format|
      if @objeto.update(publicacion_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Publicacion was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicaciones/1 or /publicaciones/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Publicacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicacion
      @objeto = Publicacion.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Publicaciones'
    end

    # Only allow a list of trusted parameters through.
    def publicacion_params
      params.require(:publicacion).permit(:fecha_publicacion, :categoria_publicacion, :otra_categoria, :titulo, :autores, :fuente, :volumen, :numero, :pagina_inicial, :issn, :doi, :cuartil, :n_autores_inv_asociados, :n_autores_estudiantes, :n_autores_otros, :ligada_red_formal, :red_formal, :documento_relacionado, :propietario, linea_investigacion_ids: [], investigador_ids: [])
    end
end
