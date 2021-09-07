class FjNforesController < ApplicationController
  before_action :set_fj_nfor, only: %i[ show edit update destroy ]

  # GET /fj_nfores or /fj_nfores.json
  def index
    @fj_nfores = FjNfor.all
  end

  # GET /fj_nfores/1 or /fj_nfores/1.json
  def show
  end

  # GET /fj_nfores/new
  def new
    @fj_nfor = FjNfor.new
  end

  # GET /fj_nfores/1/edit
  def edit
  end

  # POST /fj_nfores or /fj_nfores.json
  def create
    @fj_nfor = FjNfor.new(fj_nfor_params)

    respond_to do |format|
      if @fj_nfor.save
        format.html { redirect_to @fj_nfor, notice: "Fj nfor was successfully created." }
        format.json { render :show, status: :created, location: @fj_nfor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fj_nfor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fj_nfores/1 or /fj_nfores/1.json
  def update
    respond_to do |format|
      if @fj_nfor.update(fj_nfor_params)
        format.html { redirect_to @fj_nfor, notice: "Fj nfor was successfully updated." }
        format.json { render :show, status: :ok, location: @fj_nfor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fj_nfor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fj_nfores/1 or /fj_nfores/1.json
  def destroy
    @fj_nfor.destroy
    respond_to do |format|
      format.html { redirect_to fj_nfores_url, notice: "Fj nfor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fj_nfor
      @fj_nfor = FjNfor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fj_nfor_params
      params.require(:fj_nfor).permit(:formacion_joven_id, :nivel_formacion_id)
    end
end
