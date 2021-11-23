class DatosCentrosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_datos_centro, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /datos_centros or /datos_centros.json
  def index
    @coleccion = DatosCentro.all
  end

  # GET /datos_centros/1 or /datos_centros/1.json
  def show
  end

  # GET /datos_centros/new
  def new
    @objeto = DatosCentro.new
  end

  # GET /datos_centros/1/edit
  def edit
  end

  # POST /datos_centros or /datos_centros.json
  def create
    @objeto = DatosCentro.new(datos_centro_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Datos centro was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_centros/1 or /datos_centros/1.json
  def update
    respond_to do |format|
      if @objeto.update(datos_centro_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Datos centro was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_centros/1 or /datos_centros/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Datos centro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_datos_centro
      @objeto = DatosCentro.find(params[:id])
    end

    def set_redireccion
      @redireccion = "/app_recursos/administracion?id=#{get_elemento_id(controller_name, 'Datos Centro')}" 
    end

    # Only allow a list of trusted parameters through.
    def datos_centro_params
      params.require(:datos_centro).permit(:nombre_espaniol, :nombre_ingles, :descripcion, :acronimo, :tipo_centro, :ambito, :estado, :doc_aprobatorio, :remove_doc_aprobatorio, :doc_extension, :remove_doc_extension, :etapa, :codigo_proyecto, :decreto_aprobatorio, :fecha_decreto_aprobatorio, :fecha_inicio, :fecha_termino, :fecha_termino_extension, :personalidad_juridica, :direccion, :telefono, :fax, :sitio_web, :institucion_albergante, :nombre_autoridad, :nombres_investigador_responsable, :paterno_investigador_responsable, :materno_investigador_responsable, :admin_nombre, :admin_telefono, :admin_email, :admin_ejecutivo_rendiciones, :cientif_nombre, :cientif_email, :pme_red_nombre, :pme_red_email)
    end
end
