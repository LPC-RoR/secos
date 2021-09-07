class CiIsController < ApplicationController
  before_action :set_ci_i, only: %i[ show edit update destroy ]

  # GET /ci_is or /ci_is.json
  def index
    @ci_is = CiI.all
  end

  # GET /ci_is/1 or /ci_is/1.json
  def show
  end

  # GET /ci_is/new
  def new
    @ci_i = CiI.new
  end

  # GET /ci_is/1/edit
  def edit
  end

  # POST /ci_is or /ci_is.json
  def create
    @ci_i = CiI.new(ci_i_params)

    respond_to do |format|
      if @ci_i.save
        format.html { redirect_to @ci_i, notice: "Ci i was successfully created." }
        format.json { render :show, status: :created, location: @ci_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ci_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ci_is/1 or /ci_is/1.json
  def update
    respond_to do |format|
      if @ci_i.update(ci_i_params)
        format.html { redirect_to @ci_i, notice: "Ci i was successfully updated." }
        format.json { render :show, status: :ok, location: @ci_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ci_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ci_is/1 or /ci_is/1.json
  def destroy
    @ci_i.destroy
    respond_to do |format|
      format.html { redirect_to ci_is_url, notice: "Ci i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ci_i
      @ci_i = CiI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ci_i_params
      params.require(:ci_i).permit(:comite_editorial_id, :investigador_id)
    end
end
