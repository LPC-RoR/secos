class ILisController < ApplicationController
  before_action :set_i_li, only: %i[ show edit update destroy ]

  # GET /i_lis or /i_lis.json
  def index
    @i_lis = ILi.all
  end

  # GET /i_lis/1 or /i_lis/1.json
  def show
  end

  # GET /i_lis/new
  def new
    @i_li = ILi.new
  end

  # GET /i_lis/1/edit
  def edit
  end

  # POST /i_lis or /i_lis.json
  def create
    @i_li = ILi.new(i_li_params)

    respond_to do |format|
      if @i_li.save
        format.html { redirect_to @i_li, notice: "I li was successfully created." }
        format.json { render :show, status: :created, location: @i_li }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @i_li.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_lis/1 or /i_lis/1.json
  def update
    respond_to do |format|
      if @i_li.update(i_li_params)
        format.html { redirect_to @i_li, notice: "I li was successfully updated." }
        format.json { render :show, status: :ok, location: @i_li }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @i_li.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_lis/1 or /i_lis/1.json
  def destroy
    @i_li.destroy
    respond_to do |format|
      format.html { redirect_to i_lis_url, notice: "I li was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_li
      @i_li = ILi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def i_li_params
      params.require(:i_li).permit(:investigador_id, :linea_investigacion_id)
    end
end
