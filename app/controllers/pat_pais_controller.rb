class PatPaisController < ApplicationController
  before_action :set_pat_pai, only: %i[ show edit update destroy ]

  # GET /pat_pais or /pat_pais.json
  def index
    @pat_pais = PatPai.all
  end

  # GET /pat_pais/1 or /pat_pais/1.json
  def show
  end

  # GET /pat_pais/new
  def new
    @pat_pai = PatPai.new
  end

  # GET /pat_pais/1/edit
  def edit
  end

  # POST /pat_pais or /pat_pais.json
  def create
    @pat_pai = PatPai.new(pat_pai_params)

    respond_to do |format|
      if @pat_pai.save
        format.html { redirect_to @pat_pai, notice: "Pat pai was successfully created." }
        format.json { render :show, status: :created, location: @pat_pai }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pat_pai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pat_pais/1 or /pat_pais/1.json
  def update
    respond_to do |format|
      if @pat_pai.update(pat_pai_params)
        format.html { redirect_to @pat_pai, notice: "Pat pai was successfully updated." }
        format.json { render :show, status: :ok, location: @pat_pai }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pat_pai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pat_pais/1 or /pat_pais/1.json
  def destroy
    @pat_pai.destroy
    respond_to do |format|
      format.html { redirect_to pat_pais_url, notice: "Pat pai was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pat_pai
      @pat_pai = PatPai.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pat_pai_params
      params.require(:pat_pai).permit(:patente_id, :pais_id)
    end
end
