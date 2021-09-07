class PLisController < ApplicationController
  before_action :set_p_li, only: %i[ show edit update destroy ]

  # GET /p_lis or /p_lis.json
  def index
    @coleccion = PLi.all
  end

  # GET /p_lis/1 or /p_lis/1.json
  def show
  end

  # GET /p_lis/new
  def new
    @objeto = PLi.new
  end

  # GET /p_lis/1/edit
  def edit
  end

  # POST /p_lis or /p_lis.json
  def create
    @objeto = PLi.new(p_li_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "P li was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_lis/1 or /p_lis/1.json
  def update
    respond_to do |format|
      if @objeto.update(p_li_params)
        format.html { redirect_to @objeto, notice: "P li was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_lis/1 or /p_lis/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to p_lis_url, notice: "P li was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_li
      @objeto = PLi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def p_li_params
      params.require(:p_li).permit(:publicacion_id, :linea_investigacion_id)
    end
end
