class Help::TutorialesController < ApplicationController
  before_action :set_tutorial, only: %i[ show edit update destroy ]

  # GET /tutoriales or /tutoriales.json
  def index
    @coleccion = Tutorial.all
  end

  # GET /tutoriales/1 or /tutoriales/1.json
  def show
  end

  # GET /tutoriales/new
  def new
    @objeto = Tutorial.new
  end

  # GET /tutoriales/1/edit
  def edit
  end

  # POST /tutoriales or /tutoriales.json
  def create
    @objeto = Tutorial.new(tutorial_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: "Tutorial was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutoriales/1 or /tutoriales/1.json
  def update
    respond_to do |format|
      if @objeto.update(tutorial_params)
        format.html { redirect_to @objeto, notice: "Tutorial was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutoriales/1 or /tutoriales/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to tutoriales_url, notice: "Tutorial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial
      @objeto = Tutorial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tutorial_params
      params.require(:tutorial).permit(:orden, :tutorial, :detalle, :tema_ayuda_id)
    end
end
