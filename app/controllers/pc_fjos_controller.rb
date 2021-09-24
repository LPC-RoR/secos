class PcFjosController < ApplicationController
  before_action :set_pc_fjo, only: %i[ show edit update destroy ]

  # GET /pc_fjos or /pc_fjos.json
  def index
    @pc_fjos = PcFjo.all
  end

  # GET /pc_fjos/1 or /pc_fjos/1.json
  def show
  end

  # GET /pc_fjos/new
  def new
    @pc_fjo = PcFjo.new
  end

  # GET /pc_fjos/1/edit
  def edit
  end

  # POST /pc_fjos or /pc_fjos.json
  def create
    @pc_fjo = PcFjo.new(pc_fjo_params)

    respond_to do |format|
      if @pc_fjo.save
        format.html { redirect_to @pc_fjo, notice: "Pc fjo was successfully created." }
        format.json { render :show, status: :created, location: @pc_fjo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pc_fjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_fjos/1 or /pc_fjos/1.json
  def update
    respond_to do |format|
      if @pc_fjo.update(pc_fjo_params)
        format.html { redirect_to @pc_fjo, notice: "Pc fjo was successfully updated." }
        format.json { render :show, status: :ok, location: @pc_fjo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pc_fjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_fjos/1 or /pc_fjos/1.json
  def destroy
    @pc_fjo.destroy
    respond_to do |format|
      format.html { redirect_to pc_fjos_url, notice: "Pc fjo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_fjo
      @pc_fjo = PcFjo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pc_fjo_params
      params.require(:pc_fjo).permit(:presentacion_congreso_id, :formacion_joven_id)
    end
end
