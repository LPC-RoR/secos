class PpIsController < ApplicationController
  before_action :set_pp_i, only: %i[ show edit update destroy ]

  # GET /pp_is or /pp_is.json
  def index
    @pp_is = PpI.all
  end

  # GET /pp_is/1 or /pp_is/1.json
  def show
  end

  # GET /pp_is/new
  def new
    @pp_i = PpI.new
  end

  # GET /pp_is/1/edit
  def edit
  end

  # POST /pp_is or /pp_is.json
  def create
    @pp_i = PpI.new(pp_i_params)

    respond_to do |format|
      if @pp_i.save
        format.html { redirect_to @pp_i, notice: "Pp i was successfully created." }
        format.json { render :show, status: :created, location: @pp_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pp_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pp_is/1 or /pp_is/1.json
  def update
    respond_to do |format|
      if @pp_i.update(pp_i_params)
        format.html { redirect_to @pp_i, notice: "Pp i was successfully updated." }
        format.json { render :show, status: :ok, location: @pp_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pp_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pp_is/1 or /pp_is/1.json
  def destroy
    @pp_i.destroy
    respond_to do |format|
      format.html { redirect_to pp_is_url, notice: "Pp i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pp_i
      @pp_i = PpI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pp_i_params
      params.require(:pp_i).permit(:producto_pme_id, :investigador_id)
    end
end
