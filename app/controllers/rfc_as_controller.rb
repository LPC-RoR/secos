class RfcAsController < ApplicationController
  before_action :set_rfc_a, only: %i[ show edit update destroy ]

  # GET /rfc_as or /rfc_as.json
  def index
    @rfc_as = RfcA.all
  end

  # GET /rfc_as/1 or /rfc_as/1.json
  def show
  end

  # GET /rfc_as/new
  def new
    @rfc_a = RfcA.new
  end

  # GET /rfc_as/1/edit
  def edit
  end

  # POST /rfc_as or /rfc_as.json
  def create
    @rfc_a = RfcA.new(rfc_a_params)

    respond_to do |format|
      if @rfc_a.save
        format.html { redirect_to @rfc_a, notice: "Rfc a was successfully created." }
        format.json { render :show, status: :created, location: @rfc_a }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rfc_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfc_as/1 or /rfc_as/1.json
  def update
    respond_to do |format|
      if @rfc_a.update(rfc_a_params)
        format.html { redirect_to @rfc_a, notice: "Rfc a was successfully updated." }
        format.json { render :show, status: :ok, location: @rfc_a }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rfc_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfc_as/1 or /rfc_as/1.json
  def destroy
    @rfc_a.destroy
    respond_to do |format|
      format.html { redirect_to rfc_as_url, notice: "Rfc a was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfc_a
      @rfc_a = RfcA.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rfc_a_params
      params.require(:rfc_a).permit(:rf_colaboracion_id, :investigador)
    end
end
