class AcoPosController < ApplicationController
  before_action :set_aco_po, only: %i[ show edit update destroy ]

  # GET /aco_pos or /aco_pos.json
  def index
    @coleccion = AcoPo.all
  end

  # GET /aco_pos/1 or /aco_pos/1.json
  def show
  end

  # GET /aco_pos/new
  def new
    @objeto = AcoPo.new
  end

  # GET /aco_pos/1/edit
  def edit
  end

  # POST /aco_pos or /aco_pos.json
  def create
    @objeto = AcoPo.new(aco_po_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Aco po was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aco_pos/1 or /aco_pos/1.json
  def update
    respond_to do |format|
      if @objeto.update(aco_po_params)
        format.html { redirect_to @objeto, notice: "Aco po was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aco_pos/1 or /aco_pos/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to aco_pos_url, notice: "Aco po was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aco_po
      @objeto = AcoPo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aco_po_params
      params.require(:aco_po).permit(:aco_id, :publico_objetivo_id)
    end
end
