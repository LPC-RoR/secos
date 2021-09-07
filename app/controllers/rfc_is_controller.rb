class RfcIsController < ApplicationController
  before_action :set_rfc_i, only: %i[ show edit update destroy ]

  # GET /rfc_is or /rfc_is.json
  def index
    @rfc_is = RfcI.all
  end

  # GET /rfc_is/1 or /rfc_is/1.json
  def show
  end

  # GET /rfc_is/new
  def new
    @rfc_i = RfcI.new
  end

  # GET /rfc_is/1/edit
  def edit
  end

  # POST /rfc_is or /rfc_is.json
  def create
    @rfc_i = RfcI.new(rfc_i_params)

    respond_to do |format|
      if @rfc_i.save
        format.html { redirect_to @rfc_i, notice: "Rfc i was successfully created." }
        format.json { render :show, status: :created, location: @rfc_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rfc_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfc_is/1 or /rfc_is/1.json
  def update
    respond_to do |format|
      if @rfc_i.update(rfc_i_params)
        format.html { redirect_to @rfc_i, notice: "Rfc i was successfully updated." }
        format.json { render :show, status: :ok, location: @rfc_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rfc_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfc_is/1 or /rfc_is/1.json
  def destroy
    @rfc_i.destroy
    respond_to do |format|
      format.html { redirect_to rfc_is_url, notice: "Rfc i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfc_i
      @rfc_i = RfcI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rfc_i_params
      params.require(:rfc_i).permit(:rf_colaboracion_id, :investigador)
    end
end
