class PaisesController < ApplicationController
  before_action :set_pais, only: %i[ show edit update destroy ]

  # GET /paises or /paises.json
  def index
    @coleccion = Pais.all
  end

  # GET /paises/1 or /paises/1.json
  def show
  end

  # GET /paises/new
  def new
    @objeto = Pais.new
  end

  # GET /paises/1/edit
  def edit
  end

  # POST /paises or /paises.json
  def create
    @objeto = Pais.new(pais_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pais was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paises/1 or /paises/1.json
  def update
    respond_to do |format|
      if @objeto.update(pais_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Pais was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paises/1 or /paises/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Pais was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pais
      @objeto = Pais.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/administracion?t=Países'
    end

    # Only allow a list of trusted parameters through.
    def pais_params
      params.require(:pais).permit(:pais)
    end
end
