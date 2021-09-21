class PyhCentrosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_pyh_centro, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /pyh_centros or /pyh_centros.json
  def index
    @coleccion = PyhCentro.all
  end

  # GET /pyh_centros/1 or /pyh_centros/1.json
  def show
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /pyh_centros/new
  def new
    @objeto = PyhCentro.new
    carga_sidebar('Ingreso Datos Anuales')
  end

  # GET /pyh_centros/1/edit
  def edit
    carga_sidebar('Ingreso Datos Anuales')
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
    # Use callbacks to share common setup or constraints between actions.
    def set_pyh_centro
      @objeto = PyhCentro.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=P. y H. Centro'
    end

    # Only allow a list of trusted parameters through.
    def pyh_centro_params
      params.require(:pyh_centro).permit(:premio, :fecha, :contribucion, :institucion, :pais)
    end
end
