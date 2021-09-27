class ComiteEditorialesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_comite_editorial, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /comite_editoriales or /comite_editoriales.json
  def index
    @coleccion = ComiteEditorial.all
  end

  # GET /comite_editoriales/1 or /comite_editoriales/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /comite_editoriales/new
  def new
    @objeto = ComiteEditorial.new
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /comite_editoriales/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
  end

  # POST /comite_editoriales or /comite_editoriales.json
  def create
    @objeto = ComiteEditorial.new(comite_editorial_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Comite editorial was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comite_editoriales/1 or /comite_editoriales/1.json
  def update
    respond_to do |format|
      if @objeto.update(comite_editorial_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Comite editorial was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comite_editoriales/1 or /comite_editoriales/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Comite editorial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comite_editorial
      @objeto = ComiteEditorial.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Comités Editoriales'
    end

    # Only allow a list of trusted parameters through.
    def comite_editorial_params
      params.require(:comite_editorial).permit(:nombre_publicacion, :categoria, :otra_categoria, :anio_inicio, :anio_termino, investigador_ids: [])
    end
end
