class FjDisController < ApplicationController
  before_action :set_fj_di, only: %i[ show edit update destroy ]

  # GET /fj_dis or /fj_dis.json
  def index
    @fj_dis = FjDi.all
  end

  # GET /fj_dis/1 or /fj_dis/1.json
  def show
  end

  # GET /fj_dis/new
  def new
    @fj_di = FjDi.new
  end

  # GET /fj_dis/1/edit
  def edit
  end

  # POST /fj_dis or /fj_dis.json
  def create
    @fj_di = FjDi.new(fj_di_params)

    respond_to do |format|
      if @fj_di.save
        format.html { redirect_to @fj_di, notice: "Fj di was successfully created." }
        format.json { render :show, status: :created, location: @fj_di }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fj_di.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fj_dis/1 or /fj_dis/1.json
  def update
    respond_to do |format|
      if @fj_di.update(fj_di_params)
        format.html { redirect_to @fj_di, notice: "Fj di was successfully updated." }
        format.json { render :show, status: :ok, location: @fj_di }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fj_di.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fj_dis/1 or /fj_dis/1.json
  def destroy
    @fj_di.destroy
    respond_to do |format|
      format.html { redirect_to fj_dis_url, notice: "Fj di was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fj_di
      @fj_di = FjDi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fj_di_params
      params.require(:fj_di).permit(:formacion_joven_id, :disciplina_id)
    end
end
