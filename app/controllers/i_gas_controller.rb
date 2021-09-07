class IGasController < ApplicationController
  before_action :set_i_ga, only: %i[ show edit update destroy ]

  # GET /i_gas or /i_gas.json
  def index
    @i_gas = IGa.all
  end

  # GET /i_gas/1 or /i_gas/1.json
  def show
  end

  # GET /i_gas/new
  def new
    @i_ga = IGa.new
  end

  # GET /i_gas/1/edit
  def edit
  end

  # POST /i_gas or /i_gas.json
  def create
    @i_ga = IGa.new(i_ga_params)

    respond_to do |format|
      if @i_ga.save
        format.html { redirect_to @i_ga, notice: "I ga was successfully created." }
        format.json { render :show, status: :created, location: @i_ga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @i_ga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_gas/1 or /i_gas/1.json
  def update
    respond_to do |format|
      if @i_ga.update(i_ga_params)
        format.html { redirect_to @i_ga, notice: "I ga was successfully updated." }
        format.json { render :show, status: :ok, location: @i_ga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @i_ga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_gas/1 or /i_gas/1.json
  def destroy
    @i_ga.destroy
    respond_to do |format|
      format.html { redirect_to i_gas_url, notice: "I ga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_ga
      @i_ga = IGa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def i_ga_params
      params.require(:i_ga).permit(:investigador_id, :grado_academico_id)
    end
end
