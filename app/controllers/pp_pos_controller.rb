class PpPosController < ApplicationController
  before_action :set_pp_po, only: %i[ show edit update destroy ]

  # GET /pp_pos or /pp_pos.json
  def index
    @pp_pos = PpPo.all
  end

  # GET /pp_pos/1 or /pp_pos/1.json
  def show
  end

  # GET /pp_pos/new
  def new
    @pp_po = PpPo.new
  end

  # GET /pp_pos/1/edit
  def edit
  end

  # POST /pp_pos or /pp_pos.json
  def create
    @pp_po = PpPo.new(pp_po_params)

    respond_to do |format|
      if @pp_po.save
        format.html { redirect_to @pp_po, notice: "Pp po was successfully created." }
        format.json { render :show, status: :created, location: @pp_po }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pp_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pp_pos/1 or /pp_pos/1.json
  def update
    respond_to do |format|
      if @pp_po.update(pp_po_params)
        format.html { redirect_to @pp_po, notice: "Pp po was successfully updated." }
        format.json { render :show, status: :ok, location: @pp_po }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pp_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pp_pos/1 or /pp_pos/1.json
  def destroy
    @pp_po.destroy
    respond_to do |format|
      format.html { redirect_to pp_pos_url, notice: "Pp po was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pp_po
      @pp_po = PpPo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pp_po_params
      params.require(:pp_po).permit(:producto_pme_id, :publico_objetivo_id)
    end
end
