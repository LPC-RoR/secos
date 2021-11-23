class Aplicacion::AppRecursosController < ApplicationController
  before_action :authenticate_usuario!, only: [:ingreso_datos_anuales, :administracion, :procesos, :bandeja]
  before_action :inicia_sesion, only: [:ingreso_datos_anuales, :administracion, :procesos, :home]

  include Sidebar

  helper_method :sort_column, :sort_direction

  def index
  end

  def home
  end

  def ayuda
    carga_sidebar('Ayuda', params[:id])
  end

  def ingreso_datos_anuales
    carga_sidebar('Ingreso Datos Anuales', params[:id])
  end

  def administracion
    carga_sidebar('Administración', params[:id])
  end

  def procesos
    SbElemento.all.each do |sbe|
      sbe.acceso = 'nomina' if sbe.acceso = 'usuario'
      sbe.save
    end
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def sort_column
      Publicacion.column_names.include?(params[:sort]) ? params[:sort] : "Author"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
