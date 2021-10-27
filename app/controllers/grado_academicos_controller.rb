class GradoAcademicosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_grado_academico, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /grado_academicos or /grado_academicos.json
  def index
    @coleccion = GradoAcademico.all
  end

  # GET /grado_academicos/1 or /grado_academicos/1.json
  def show
  end

  # GET /grado_academicos/new
  def new
    @objeto = GradoAcademico.new
  end

  # GET /grado_academicos/1/edit
  def edit
  end

  # POST /grado_academicos or /grado_academicos.json
  def create
    @objeto = GradoAcademico.new(grado_academico_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Grado academico was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grado_academicos/1 or /grado_academicos/1.json
  def update
    respond_to do |format|
      if @objeto.update(grado_academico_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Grado academico was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grado_academicos/1 or /grado_academicos/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Grado academico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_grado_academico
      @objeto = GradoAcademico.find(params[:id])
    end

    def set_redireccion
      @redireccion = '/recursos/administracion?t=Grados Académicos'
    end

    # Only allow a list of trusted parameters through.
    def grado_academico_params
      params.require(:grado_academico).permit(:grado_academico)
    end
end
