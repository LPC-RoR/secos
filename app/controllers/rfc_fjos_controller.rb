class RfcFjosController < ApplicationController
  before_action :set_rfc_fjo, only: %i[ show edit update destroy ]

  # GET /rfc_fjos or /rfc_fjos.json
  def index
    @rfc_fjos = RfcFjo.all
  end

  # GET /rfc_fjos/1 or /rfc_fjos/1.json
  def show
  end

  # GET /rfc_fjos/new
  def new
    @rfc_fjo = RfcFjo.new
  end

  # GET /rfc_fjos/1/edit
  def edit
  end

  # POST /rfc_fjos or /rfc_fjos.json
  def create
    @rfc_fjo = RfcFjo.new(rfc_fjo_params)

    respond_to do |format|
      if @rfc_fjo.save
        format.html { redirect_to @rfc_fjo, notice: "Rfc fjo was successfully created." }
        format.json { render :show, status: :created, location: @rfc_fjo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rfc_fjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfc_fjos/1 or /rfc_fjos/1.json
  def update
    respond_to do |format|
      if @rfc_fjo.update(rfc_fjo_params)
        format.html { redirect_to @rfc_fjo, notice: "Rfc fjo was successfully updated." }
        format.json { render :show, status: :ok, location: @rfc_fjo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rfc_fjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfc_fjos/1 or /rfc_fjos/1.json
  def destroy
    @rfc_fjo.destroy
    respond_to do |format|
      format.html { redirect_to rfc_fjos_url, notice: "Rfc fjo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfc_fjo
      @rfc_fjo = RfcFjo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rfc_fjo_params
      params.require(:rfc_fjo).permit(:rf_colaboracion_id, :formacion_joven_id)
    end
end
