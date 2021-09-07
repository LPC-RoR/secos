class RColaboracionesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_r_colaboracion, only: %i[ show edit update destroy ]

  # GET /r_colaboraciones or /r_colaboraciones.json
  def index
    @coleccion = RColaboracion.all
  end

  # GET /r_colaboraciones/1 or /r_colaboraciones/1.json
  def show
  end

  # GET /r_colaboraciones/new
  def new
    @objeto = RColaboracion.new
  end

  # GET /r_colaboraciones/1/edit
  def edit
  end

  # POST /r_colaboraciones or /r_colaboraciones.json
  def create
    @objeto = RColaboracion.new(r_colaboracion_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "R colaboracion was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_colaboraciones/1 or /r_colaboraciones/1.json
  def update
    respond_to do |format|
      if @objeto.update(r_colaboracion_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "R colaboracion was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_colaboraciones/1 or /r_colaboraciones/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "R colaboracion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_colaboracion
      @objeto = RColaboracion.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=Redes de Colaboración'
    end

    # Only allow a list of trusted parameters through.
    def r_colaboracion_params
      params.require(:r_colaboracion).permit(:nombre_red, :objetivo, :descripcion, :institucion_co_participante, :tipo_productos, :n_productos, :n_investigadores_milenio, :n_postdoc_alumnos_milenio, :n_investigadores_externos, :n_postdoc_alumnos_externos)
    end
end
