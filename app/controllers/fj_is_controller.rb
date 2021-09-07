class FjIsController < ApplicationController
  before_action :set_fj_i, only: %i[ show edit update destroy ]

  # GET /fj_is or /fj_is.json
  def index
    @fj_is = FjI.all
  end

  # GET /fj_is/1 or /fj_is/1.json
  def show
  end

  # GET /fj_is/new
  def new
    @fj_i = FjI.new
  end

  # GET /fj_is/1/edit
  def edit
  end

  # POST /fj_is or /fj_is.json
  def create
    @fj_i = FjI.new(fj_i_params)

    respond_to do |format|
      if @fj_i.save
        format.html { redirect_to @fj_i, notice: "Fj i was successfully created." }
        format.json { render :show, status: :created, location: @fj_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fj_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fj_is/1 or /fj_is/1.json
  def update
    respond_to do |format|
      if @fj_i.update(fj_i_params)
        format.html { redirect_to @fj_i, notice: "Fj i was successfully updated." }
        format.json { render :show, status: :ok, location: @fj_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fj_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fj_is/1 or /fj_is/1.json
  def destroy
    @fj_i.destroy
    respond_to do |format|
      format.html { redirect_to fj_is_url, notice: "Fj i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fj_i
      @fj_i = FjI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fj_i_params
      params.require(:fj_i).permit(:formacion_joven_id, :investigador_id)
    end
end
