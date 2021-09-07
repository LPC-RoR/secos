class AdPosController < ApplicationController
  before_action :set_ad_po, only: %i[ show edit update destroy ]

  # GET /ad_pos or /ad_pos.json
  def index
    @ad_pos = AdPo.all
  end

  # GET /ad_pos/1 or /ad_pos/1.json
  def show
  end

  # GET /ad_pos/new
  def new
    @ad_po = AdPo.new
  end

  # GET /ad_pos/1/edit
  def edit
  end

  # POST /ad_pos or /ad_pos.json
  def create
    @ad_po = AdPo.new(ad_po_params)

    respond_to do |format|
      if @ad_po.save
        format.html { redirect_to @ad_po, notice: "Ad po was successfully created." }
        format.json { render :show, status: :created, location: @ad_po }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ad_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_pos/1 or /ad_pos/1.json
  def update
    respond_to do |format|
      if @ad_po.update(ad_po_params)
        format.html { redirect_to @ad_po, notice: "Ad po was successfully updated." }
        format.json { render :show, status: :ok, location: @ad_po }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ad_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_pos/1 or /ad_pos/1.json
  def destroy
    @ad_po.destroy
    respond_to do |format|
      format.html { redirect_to ad_pos_url, notice: "Ad po was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_po
      @ad_po = AdPo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ad_po_params
      params.require(:ad_po).permit(:actividad_difusion_id, :publico_objetivo_id)
    end
end
