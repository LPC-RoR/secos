class IDisController < ApplicationController
  before_action :set_i_di, only: %i[ show edit update destroy ]

  # GET /i_dis or /i_dis.json
  def index
    @i_dis = IDi.all
  end

  # GET /i_dis/1 or /i_dis/1.json
  def show
  end

  # GET /i_dis/new
  def new
    @i_di = IDi.new
  end

  # GET /i_dis/1/edit
  def edit
  end

  # POST /i_dis or /i_dis.json
  def create
    @i_di = IDi.new(i_di_params)

    respond_to do |format|
      if @i_di.save
        format.html { redirect_to @i_di, notice: "I di was successfully created." }
        format.json { render :show, status: :created, location: @i_di }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @i_di.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_dis/1 or /i_dis/1.json
  def update
    respond_to do |format|
      if @i_di.update(i_di_params)
        format.html { redirect_to @i_di, notice: "I di was successfully updated." }
        format.json { render :show, status: :ok, location: @i_di }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @i_di.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_dis/1 or /i_dis/1.json
  def destroy
    @i_di.destroy
    respond_to do |format|
      format.html { redirect_to i_dis_url, notice: "I di was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_di
      @i_di = IDi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def i_di_params
      params.require(:i_di).permit(:investigador_id, :disciplina_id)
    end
end
