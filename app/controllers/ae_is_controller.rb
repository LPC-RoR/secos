class AeIsController < ApplicationController
  before_action :set_ae_i, only: %i[ show edit update destroy ]

  # GET /ae_is or /ae_is.json
  def index
    @ae_is = AeI.all
  end

  # GET /ae_is/1 or /ae_is/1.json
  def show
  end

  # GET /ae_is/new
  def new
    @ae_i = AeI.new
  end

  # GET /ae_is/1/edit
  def edit
  end

  # POST /ae_is or /ae_is.json
  def create
    @ae_i = AeI.new(ae_i_params)

    respond_to do |format|
      if @ae_i.save
        format.html { redirect_to @ae_i, notice: "Ae i was successfully created." }
        format.json { render :show, status: :created, location: @ae_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ae_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ae_is/1 or /ae_is/1.json
  def update
    respond_to do |format|
      if @ae_i.update(ae_i_params)
        format.html { redirect_to @ae_i, notice: "Ae i was successfully updated." }
        format.json { render :show, status: :ok, location: @ae_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ae_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ae_is/1 or /ae_is/1.json
  def destroy
    @ae_i.destroy
    respond_to do |format|
      format.html { redirect_to ae_is_url, notice: "Ae i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ae_i
      @ae_i = AeI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ae_i_params
      params.require(:ae_i).permit(:articulo_entrevista_id, :investigador_id)
    end
end
