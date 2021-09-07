class AePosController < ApplicationController
  before_action :set_ae_po, only: %i[ show edit update destroy ]

  # GET /ae_pos or /ae_pos.json
  def index
    @ae_pos = AePo.all
  end

  # GET /ae_pos/1 or /ae_pos/1.json
  def show
  end

  # GET /ae_pos/new
  def new
    @ae_po = AePo.new
  end

  # GET /ae_pos/1/edit
  def edit
  end

  # POST /ae_pos or /ae_pos.json
  def create
    @ae_po = AePo.new(ae_po_params)

    respond_to do |format|
      if @ae_po.save
        format.html { redirect_to @ae_po, notice: "Ae po was successfully created." }
        format.json { render :show, status: :created, location: @ae_po }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ae_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ae_pos/1 or /ae_pos/1.json
  def update
    respond_to do |format|
      if @ae_po.update(ae_po_params)
        format.html { redirect_to @ae_po, notice: "Ae po was successfully updated." }
        format.json { render :show, status: :ok, location: @ae_po }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ae_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ae_pos/1 or /ae_pos/1.json
  def destroy
    @ae_po.destroy
    respond_to do |format|
      format.html { redirect_to ae_pos_url, notice: "Ae po was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ae_po
      @ae_po = AePo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ae_po_params
      params.require(:ae_po).permit(:articulo_entrevista_id, :publico_objetivo)
    end
end
