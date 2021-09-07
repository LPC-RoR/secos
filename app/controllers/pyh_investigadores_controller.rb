class PyhInvestigadoresController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_pyh_investigador, only: %i[ show edit update destroy ]

  # GET /pyh_investigadores or /pyh_investigadores.json
  def index
    @coleccion = PyhInvestigador.all
  end

  # GET /pyh_investigadores/1 or /pyh_investigadores/1.json
  def show
  end

  # GET /pyh_investigadores/new
  def new
    @objeto = PyhInvestigador.new
  end

  # GET /pyh_investigadores/1/edit
  def edit
  end

  # POST /pyh_investigadores or /pyh_investigadores.json
  def create
    @objeto = PyhInvestigador.new(pyh_investigador_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pyh investigador was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pyh_investigadores/1 or /pyh_investigadores/1.json
  def update
    respond_to do |format|
      if @objeto.update(pyh_investigador_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pyh investigador was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pyh_investigadores/1 or /pyh_investigadores/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Pyh investigador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pyh_investigador
      @objeto = PyhInvestigador.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/ingreso_datos_anuales?t=P. y H. Investigadores'
    end

    # Only allow a list of trusted parameters through.
    def pyh_investigador_params
      params.require(:pyh_investigador).permit(:investigador, :premio, :fecha, :contribucion, :institucion, :pais)
    end
end
