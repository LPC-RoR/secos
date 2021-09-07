class PIsController < ApplicationController
  before_action :set_pi, only: %i[ show edit update destroy ]

  # GET /pis or /pis.json
  def index
    @coleccion = Pi.all
  end

  # GET /pis/1 or /pis/1.json
  def show
  end

  # GET /pis/new
  def new
    @objeto = Pi.new
  end

  # GET /pis/1/edit
  def edit
  end

  # POST /pis or /pis.json
  def create
    @objeto = Pi.new(pi_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Pi was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pis/1 or /pis/1.json
  def update
    respond_to do |format|
      if @objeto.update(pi_params)
        format.html { redirect_to @objeto, notice: "Pi was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pis/1 or /pis/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to pis_url, notice: "Pi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pi
      @objeto = Pi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pi_params
      params.require(:pi).permit(:publicacion_id, :investigador_id)
    end
end
