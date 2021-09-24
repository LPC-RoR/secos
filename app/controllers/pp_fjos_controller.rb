class PpFjosController < ApplicationController
  before_action :set_pp_fjo, only: %i[ show edit update destroy ]

  # GET /pp_fjos or /pp_fjos.json
  def index
    @pp_fjos = PpFjo.all
  end

  # GET /pp_fjos/1 or /pp_fjos/1.json
  def show
  end

  # GET /pp_fjos/new
  def new
    @pp_fjo = PpFjo.new
  end

  # GET /pp_fjos/1/edit
  def edit
  end

  # POST /pp_fjos or /pp_fjos.json
  def create
    @pp_fjo = PpFjo.new(pp_fjo_params)

    respond_to do |format|
      if @pp_fjo.save
        format.html { redirect_to @pp_fjo, notice: "Pp fjo was successfully created." }
        format.json { render :show, status: :created, location: @pp_fjo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pp_fjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pp_fjos/1 or /pp_fjos/1.json
  def update
    respond_to do |format|
      if @pp_fjo.update(pp_fjo_params)
        format.html { redirect_to @pp_fjo, notice: "Pp fjo was successfully updated." }
        format.json { render :show, status: :ok, location: @pp_fjo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pp_fjo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pp_fjos/1 or /pp_fjos/1.json
  def destroy
    @pp_fjo.destroy
    respond_to do |format|
      format.html { redirect_to pp_fjos_url, notice: "Pp fjo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pp_fjo
      @pp_fjo = PpFjo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pp_fjo_params
      params.require(:pp_fjo).permit(:producto_pme_id, :formacion_joven_id)
    end
end
