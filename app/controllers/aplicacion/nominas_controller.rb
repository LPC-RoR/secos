class Aplicacion::NominasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_nomina, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /nominas or /nominas.json
  def index
    @coleccion = Nomina.all
  end

  # GET /nominas/1 or /nominas/1.json
  def show
    carga_sidebar('Administración')
  end

  # GET /nominas/new
  def new
    @objeto = Nomina.new
    carga_sidebar('Administración')
  end

  # GET /nominas/1/edit
  def edit
    carga_sidebar('Administración')
  end

  # POST /nominas or /nominas.json
  def create
    @objeto = Nomina.new(nomina_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nomina was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nominas/1 or /nominas/1.json
  def update
    respond_to do |format|
      if @objeto.update(nomina_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nomina was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nominas/1 or /nominas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Nomina was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nomina
      @objeto = Nomina.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/administracion?t=Nómina'
    end

    # Only allow a list of trusted parameters through.
    def nomina_params
      params.require(:nomina).permit(:email, :tipo)
    end
end
