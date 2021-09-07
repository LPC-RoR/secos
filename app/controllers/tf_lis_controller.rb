class TfLisController < ApplicationController
  before_action :set_tf_li, only: %i[ show edit update destroy ]

  # GET /tf_lis or /tf_lis.json
  def index
    @tf_lis = TfLi.all
  end

  # GET /tf_lis/1 or /tf_lis/1.json
  def show
  end

  # GET /tf_lis/new
  def new
    @tf_li = TfLi.new
  end

  # GET /tf_lis/1/edit
  def edit
  end

  # POST /tf_lis or /tf_lis.json
  def create
    @tf_li = TfLi.new(tf_li_params)

    respond_to do |format|
      if @tf_li.save
        format.html { redirect_to @tf_li, notice: "Tf li was successfully created." }
        format.json { render :show, status: :created, location: @tf_li }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tf_li.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tf_lis/1 or /tf_lis/1.json
  def update
    respond_to do |format|
      if @tf_li.update(tf_li_params)
        format.html { redirect_to @tf_li, notice: "Tf li was successfully updated." }
        format.json { render :show, status: :ok, location: @tf_li }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tf_li.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tf_lis/1 or /tf_lis/1.json
  def destroy
    @tf_li.destroy
    respond_to do |format|
      format.html { redirect_to tf_lis_url, notice: "Tf li was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tf_li
      @tf_li = TfLi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tf_li_params
      params.require(:tf_li).permit(:tesis_finalizada_id, :LineaInvestigacion)
    end
end
