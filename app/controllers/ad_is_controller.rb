class AdIsController < ApplicationController
  before_action :set_ad_i, only: %i[ show edit update destroy ]

  # GET /ad_is or /ad_is.json
  def index
    @ad_is = AdI.all
  end

  # GET /ad_is/1 or /ad_is/1.json
  def show
  end

  # GET /ad_is/new
  def new
    @ad_i = AdI.new
  end

  # GET /ad_is/1/edit
  def edit
  end

  # POST /ad_is or /ad_is.json
  def create
    @ad_i = AdI.new(ad_i_params)

    respond_to do |format|
      if @ad_i.save
        format.html { redirect_to @ad_i, notice: "Ad i was successfully created." }
        format.json { render :show, status: :created, location: @ad_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ad_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_is/1 or /ad_is/1.json
  def update
    respond_to do |format|
      if @ad_i.update(ad_i_params)
        format.html { redirect_to @ad_i, notice: "Ad i was successfully updated." }
        format.json { render :show, status: :ok, location: @ad_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ad_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_is/1 or /ad_is/1.json
  def destroy
    @ad_i.destroy
    respond_to do |format|
      format.html { redirect_to ad_is_url, notice: "Ad i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_i
      @ad_i = AdI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ad_i_params
      params.require(:ad_i).permit(:actividad_difusion_id, :investigador_id)
    end
end
