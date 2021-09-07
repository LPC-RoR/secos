class NivelFormacionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_nivel_formacion, only: %i[ show edit update destroy ]

  # GET /nivel_formaciones or /nivel_formaciones.json
  def index
    @coleccion = NivelFormacion.all
  end

  # GET /nivel_formaciones/1 or /nivel_formaciones/1.json
  def show
  end

  # GET /nivel_formaciones/new
  def new
    @objeto = NivelFormacion.new
  end

  # GET /nivel_formaciones/1/edit
  def edit
  end

  # POST /nivel_formaciones or /nivel_formaciones.json
  def create
    @objeto = NivelFormacion.new(nivel_formacion_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Nivel formacion was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nivel_formaciones/1 or /nivel_formaciones/1.json
  def update
    respond_to do |format|
      if @objeto.update(nivel_formacion_params)
        format.html { redirect_to @objeto, notice: "Nivel formacion was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivel_formaciones/1 or /nivel_formaciones/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to nivel_formaciones_url, notice: "Nivel formacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivel_formacion
      @objeto = NivelFormacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nivel_formacion_params
      params.require(:nivel_formacion).permit(:nivel_en_formacion, :titulo_grado, :descripcion, :fecha_inicio, :fecha_obtencion)
    end
end
