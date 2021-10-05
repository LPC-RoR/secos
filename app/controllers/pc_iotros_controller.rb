class PcIotrosController < ApplicationController
  before_action :set_pc_iotro, only: %i[ show edit update destroy ]

  # GET /pc_iotros or /pc_iotros.json
  def index
    @pc_iotros = PcIotro.all
  end

  # GET /pc_iotros/1 or /pc_iotros/1.json
  def show
  end

  # GET /pc_iotros/new
  def new
    @pc_iotro = PcIotro.new
  end

  # GET /pc_iotros/1/edit
  def edit
  end

  # POST /pc_iotros or /pc_iotros.json
  def create
    @pc_iotro = PcIotro.new(pc_iotro_params)

    respond_to do |format|
      if @pc_iotro.save
        format.html { redirect_to @pc_iotro, notice: "Pc iotro was successfully created." }
        format.json { render :show, status: :created, location: @pc_iotro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pc_iotro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_iotros/1 or /pc_iotros/1.json
  def update
    respond_to do |format|
      if @pc_iotro.update(pc_iotro_params)
        format.html { redirect_to @pc_iotro, notice: "Pc iotro was successfully updated." }
        format.json { render :show, status: :ok, location: @pc_iotro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pc_iotro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_iotros/1 or /pc_iotros/1.json
  def destroy
    @pc_iotro.destroy
    respond_to do |format|
      format.html { redirect_to pc_iotros_url, notice: "Pc iotro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_iotro
      @pc_iotro = PcIotro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pc_iotro_params
      params.require(:pc_iotro).permit(:presentacion_congreso_id, :investigador_id)
    end
end
