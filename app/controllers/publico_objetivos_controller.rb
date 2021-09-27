class PublicoObjetivosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_publico_objetivo, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /publico_objetivos or /publico_objetivos.json
  def index
    @coleccion = PublicoObjetivo.all
  end

  # GET /publico_objetivos/1 or /publico_objetivos/1.json
  def show
    carga_sidebar('Administración')
  end

  # GET /publico_objetivos/new
  def new
    @objeto = PublicoObjetivo.new
    carga_sidebar('Administración')
  end

  # GET /publico_objetivos/1/edit
  def edit
    carga_sidebar('Administración')
  end

  # POST /publico_objetivos or /publico_objetivos.json
  def create
    @objeto = PublicoObjetivo.new(publico_objetivo_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Publico objetivo was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publico_objetivos/1 or /publico_objetivos/1.json
  def update
    respond_to do |format|
      if @objeto.update(publico_objetivo_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Publico objetivo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publico_objetivos/1 or /publico_objetivos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Publico objetivo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publico_objetivo
      @objeto = PublicoObjetivo.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/administracion?t=Público Objetivo'
    end

    # Only allow a list of trusted parameters through.
    def publico_objetivo_params
      params.require(:publico_objetivo).permit(:publico_objetivo)
    end
end
