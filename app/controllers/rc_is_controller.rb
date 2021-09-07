class RcIsController < ApplicationController
  before_action :set_rc_i, only: %i[ show edit update destroy ]

  # GET /rc_is or /rc_is.json
  def index
    @rc_is = RcI.all
  end

  # GET /rc_is/1 or /rc_is/1.json
  def show
  end

  # GET /rc_is/new
  def new
    @rc_i = RcI.new
  end

  # GET /rc_is/1/edit
  def edit
  end

  # POST /rc_is or /rc_is.json
  def create
    @rc_i = RcI.new(rc_i_params)

    respond_to do |format|
      if @rc_i.save
        format.html { redirect_to @rc_i, notice: "Rc i was successfully created." }
        format.json { render :show, status: :created, location: @rc_i }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rc_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rc_is/1 or /rc_is/1.json
  def update
    respond_to do |format|
      if @rc_i.update(rc_i_params)
        format.html { redirect_to @rc_i, notice: "Rc i was successfully updated." }
        format.json { render :show, status: :ok, location: @rc_i }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rc_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rc_is/1 or /rc_is/1.json
  def destroy
    @rc_i.destroy
    respond_to do |format|
      format.html { redirect_to rc_is_url, notice: "Rc i was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rc_i
      @rc_i = RcI.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rc_i_params
      params.require(:rc_i).permit(:r_colaboracion_id, :investigador_id)
    end
end
