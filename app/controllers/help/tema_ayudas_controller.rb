class Help::TemaAyudasController < ApplicationController
  before_action :set_tema_ayuda, only: %i[ show edit update destroy ]

  # GET /tema_ayudas or /tema_ayudas.json
  def index
    @coleccion = TemaAyuda.all
  end

  # GET /tema_ayudas/1 or /tema_ayudas/1.json
  def show
  end

  # GET /tema_ayudas/new
  def new
    @objeto = TemaAyuda.new
  end

  # GET /tema_ayudas/1/edit
  def edit
  end

  # POST /tema_ayudas or /tema_ayudas.json
  def create
    @objeto = TemaAyuda.new(tema_ayuda_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Tema ayuda was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tema_ayudas/1 or /tema_ayudas/1.json
  def update
    respond_to do |format|
      if @objeto.update(tema_ayuda_params)
        format.html { redirect_to @objeto, notice: "Tema ayuda was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tema_ayudas/1 or /tema_ayudas/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to tema_ayudas_url, notice: "Tema ayuda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tema_ayuda
      @objeto = TemaAyuda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tema_ayuda_params
      params.require(:tema_ayuda).permit(:orden, :tema_ayuda, :detalle, :tipo, :ilustracion, :ilustracion_cache)
    end
end
