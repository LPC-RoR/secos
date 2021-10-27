class Aplicacion::RecursosController < ApplicationController

  before_action :inicia_sesion
  before_action :authenticate_usuario!, only: [:ingreso_datos_anuales, :administracion, :procesos, :borrar_archivos]

  include Sidebar

#  before_action :set_recurso, only: [:show, :edit, :update, :destroy]

  def home
    @coleccion = {}
    @coleccion['tema_ayudas'] = TemaAyuda.where(tipo: 'inicio').where(activo: true).order(:orden)
  end

  def ayuda
    carga_sidebar('Ayuda', params[:t])
#    carga_tutorial(@sb_elementos, @t)
  end

  def ingreso_datos_anuales
    # Trae sidebar desde concern 'sidebar.rb'

    carga_sidebar('Ingreso Datos Anuales', params[:t])

    # INICIALIZA TABLAS
    case @t
    when 'Presentaciones Congresos'
      if Pais.all.empty?
        Aco::PAISES.each do |pais|
          Pais.create(pais: pais)
        end
      end
#      Nomina.delete_all
      if Nomina.all.empty?
        Nomina::NOMINA.each do |usuario|
          Nomina.create(nombre: usuario[0], email: usuario[1])
        end
      end
    end
    
  end

  def administracion
    # Trae sidebar desde concern 'sidebar.rb'

    carga_sidebar('Administración', params[:t])

    # INICIALIZA TABLAS
    case @t
    when 'Disciplinas'
      if @coleccion[@controlador].empty?
        Disciplina::DISCIPLINAS.each do |disciplina|
          Disciplina.create(disciplina: disciplina)
        end
      end
    when 'Público Objetivo'
      if @coleccion[@controlador].empty?
        PublicoObjetivo::PUBLICOS_OBJETIVO.each do |po|
          PublicoObjetivo.create(publico_objetivo: po)
        end
      end
    end
    
  end

  def procesos
    carga_sidebar('Ingreso Datos Anuales')
  end

  def borrar_archivos
#   Autor.delete_all
#   Carga.delete_all
#   Carpeta.delete_all
#   Cita.delete_all
#   Clasificacion.delete_all
#   Departamento.delete_all
#   Evaluacion.delete_all
#   Idioma.delete_all
#   Institucion.delete_all
#   Investigador.delete_all
#   Proceso.delete_all
#   Publicacion.delete_all
#   Registro.delete_all
#   Revista.delete_all
#   Texto.delete_all
#   Tema.delete_all

#    buscado = Publicacion.find(1686)
#    unless buscado.blank?
#      buscado.evaluaciones.delete_all
#      buscado.textos.delete_all
#      buscado.investigadores.delete_all
#      buscado.cargas.delete_all
#      buscado.carpetas.delete_all
#      buscado.proyectos.delete_all
#      buscado.etiquetas.delete_all
#      buscado.delete
#    end

    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
end
 