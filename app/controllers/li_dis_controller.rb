class LiDisController < ApplicationController
  before_action :set_li_di, only: %i[ show edit update destroy ]

  # GET /li_dis or /li_dis.json
  def index
    @li_dis = LiDi.all
  end

  # GET /li_dis/1 or /li_dis/1.json
  def show
  end

  # GET /li_dis/new
  def new
    @li_di = LiDi.new
  end

  # GET /li_dis/1/edit
  def edit
  end

  # POST /li_dis or /li_dis.json
  def create
    @li_di = LiDi.new(li_di_params)

    respond_to do |format|
      if @li_di.save
        format.html { redirect_to @li_di, notice: "Li di was successfully created." }
        format.json { render :show, status: :created, location: @li_di }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @li_di.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /li_dis/1 or /li_dis/1.json
  def update
    respond_to do |format|
      if @li_di.update(li_di_params)
        format.html { redirect_to @li_di, notice: "Li di was successfully updated." }
        format.json { render :show, status: :ok, location: @li_di }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @li_di.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /li_dis/1 or /li_dis/1.json
  def destroy
    @li_di.destroy
    respond_to do |format|
      format.html { redirect_to li_dis_url, notice: "Li di was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_li_di
      @li_di = LiDi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def li_di_params
      params.require(:li_di).permit(:ĺinea_investigacion_id, :disciplina_id)
    end
end
