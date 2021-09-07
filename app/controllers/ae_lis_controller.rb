class AeLisController < ApplicationController
  before_action :set_ae_li, only: %i[ show edit update destroy ]

  # GET /ae_lis or /ae_lis.json
  def index
    @ae_lis = AeLi.all
  end

  # GET /ae_lis/1 or /ae_lis/1.json
  def show
  end

  # GET /ae_lis/new
  def new
    @ae_li = AeLi.new
  end

  # GET /ae_lis/1/edit
  def edit
  end

  # POST /ae_lis or /ae_lis.json
  def create
    @ae_li = AeLi.new(ae_li_params)

    respond_to do |format|
      if @ae_li.save
        format.html { redirect_to @ae_li, notice: "Ae li was successfully created." }
        format.json { render :show, status: :created, location: @ae_li }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ae_li.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ae_lis/1 or /ae_lis/1.json
  def update
    respond_to do |format|
      if @ae_li.update(ae_li_params)
        format.html { redirect_to @ae_li, notice: "Ae li was successfully updated." }
        format.json { render :show, status: :ok, location: @ae_li }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ae_li.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ae_lis/1 or /ae_lis/1.json
  def destroy
    @ae_li.destroy
    respond_to do |format|
      format.html { redirect_to ae_lis_url, notice: "Ae li was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ae_li
      @ae_li = AeLi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ae_li_params
      params.require(:ae_li).permit(:articulo_entrevista_id, :linea_investigacion_id)
    end
end
