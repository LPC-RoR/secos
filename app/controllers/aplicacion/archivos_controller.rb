class Aplicacion::ArchivosController < ApplicationController
  before_action :set_archivo, only: %i[ show edit update destroy ]

  # GET /archivos or /archivos.json
  def index
    @coleccion = Archivo.all
  end

  # GET /archivos/1 or /archivos/1.json
  def show
  end

  # GET /archivos/new
  def new
    @objeto = Archivo.new
  end

  # GET /archivos/1/edit
  def edit
  end

  # POST /archivos or /archivos.json
  def create
    @objeto = Archivo.new(archivo_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Archivo was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archivos/1 or /archivos/1.json
  def update
    respond_to do |format|
      if @objeto.update(archivo_params)
        format.html { redirect_to @objeto, notice: "Archivo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivos/1 or /archivos/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to archivos_url, notice: "Archivo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivo
      @objeto = Archivo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def archivo_params
      params.require(:archivo).permit(:orden, :archivo, :nota, :documento_id)
    end
end
