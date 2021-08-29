class DisciplinasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
  before_action :set_disciplina, only: %i[ show edit update destroy ]

  # GET /disciplinas or /disciplinas.json
  def index
    @coleccion = Disciplina.all
  end

  # GET /disciplinas/1 or /disciplinas/1.json
  def show
  end

  # GET /disciplinas/new
  def new
    @objeto = Disciplina.new
  end

  # GET /disciplinas/1/edit
  def edit
  end

  # POST /disciplinas or /disciplinas.json
  def create
    @objeto = Disciplina.new(disciplina_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Disciplina was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disciplinas/1 or /disciplinas/1.json
  def update
    respond_to do |format|
      if @objeto.update(disciplina_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Disciplina was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplinas/1 or /disciplinas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Disciplina was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplina
      @objeto = Disciplina.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/administracion?t=Disciplinas'
    end

    # Only allow a list of trusted parameters through.
    def disciplina_params
      params.require(:disciplina).permit(:disciplina)
    end
end
