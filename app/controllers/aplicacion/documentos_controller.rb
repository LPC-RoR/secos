class Aplicacion::DocumentosController < ApplicationController
  before_action :set_documento, only: %i[ show edit update destroy ]

  # GET /documentos or /documentos.json
  def index
    @coleccion = Documento.all
  end

  # GET /documentos/1 or /documentos/1.json
  def show
  end

  # GET /documentos/new
  def new
    @objeto = Documento.new
  end

  # GET /documentos/1/edit
  def edit
  end

  # POST /documentos or /documentos.json
  def create
    @objeto = Documento.new(documento_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Documento was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentos/1 or /documentos/1.json
  def update
    respond_to do |format|
      if @objeto.update(documento_params)
        format.html { redirect_to @objeto, notice: "Documento was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos/1 or /documentos/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to documentos_url, notice: "Documento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documento
      @objeto = Documento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def documento_params
      params.require(:documento).permit(:documento)
    end
end
