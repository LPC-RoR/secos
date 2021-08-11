class Help::MensajesController < ApplicationController
  before_action :set_mensaje, only: %i[ show edit update destroy ]

  # GET /mensajes or /mensajes.json
  def index
    @coleccion = Mensaje.all
  end

  # GET /mensajes/1 or /mensajes/1.json
  def show
  end

  # GET /mensajes/new
  def new
    @objeto = Mensaje.new
  end

  # GET /mensajes/1/edit
  def edit
  end

  # POST /mensajes or /mensajes.json
  def create
    @objeto = Mensaje.new(mensaje_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Mensaje was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensajes/1 or /mensajes/1.json
  def update
    respond_to do |format|
      if @objeto.update(mensaje_params)
        format.html { redirect_to @objeto, notice: "Mensaje was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensajes/1 or /mensajes/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to mensajes_url, notice: "Mensaje was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mensaje
      @objeto = Mensaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mensaje_params
      params.require(:mensaje).permit(:mensaje, :tipo, :estado, :email, :fecha_envio, :detalle, :perfil_id)
    end
end
