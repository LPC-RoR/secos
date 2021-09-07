class PcIsController < ApplicationController
  before_action :set_pc_i, only: %i[ show edit update destroy ]

  # GET /pc_is or /pc_is.json
  def index
    @pc_is = PcI.all
  end

  # GET /pc_is/1 or /pc_is/1.json
  def show
  end

  # GET /pc_is/new
  def new
    @pc_i = PcI.new
  end

  # GET /pc_is/1/edit
  def edit
  end

  # POST /pc_is or /pc_is.json
  def create
    @pc_i = PcI.new(pc_i_params)

    respond_to do |format|
      if @pc_i.save
        format.html { redirect_to @pc_i, notice: "Pc i was successfully created." }
        format.json { render :show, status: :created, location: @pc_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pc_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_is/1 or /pc_is/1.json
  def update
    respond_to do |format|
      if @pc_i.update(pc_i_params)
        format.html { redirect_to @pc_i, notice: "Pc i was successfully updated." }
        format.json { render :show, status: :ok, location: @pc_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pc_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_is/1 or /pc_is/1.json
  def destroy
    @pc_i.destroy
    respond_to do |format|
      format.html { redirect_to pc_is_url, notice: "Pc i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_i
      @pc_i = PcI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pc_i_params
      params.require(:pc_i).permit(:presentacion_congreso_id, :investigador_id)
    end
end
