class Aplicacion::RecursosController < ApplicationController

  before_action :inicia_sesion
  before_action :authenticate_usuario!, only: [:ingreso_datos_anuales, :administracion, :procesos, :borrar_archivos]
  before_action :carga_temas_ayuda

  include Sidebar

#  before_action :set_recurso, only: [:show, :edit, :update, :destroy]

  def home
    @coleccion = {}
    @coleccion['tema_ayudas'] = TemaAyuda.where(tipo: 'inicio').where(activo: true).order(:orden)
  end

  def ingreso_datos_anuales
    # Trae sidebar desde concern 'sidebar.rb'
#    @side_name = 'Ingreso Datos Anuales'
#    @side_link = '/recursos/ingreso_datos_anuales'
#    @sidebar = side_list('Ingreso Datos Anuales')

    carga_sidebar('Ingreso Datos Anuales')

    # parámetro 't'
    @t = params[:t].blank? ? 'Datos Centro' : params[:t]

    # Trae nombre de la tabla desde concer 'sidebar'
    @tabla = hash_tablas('Ingreso Datos Anuales')[@t]
    @set_display = set_tabla('Ingreso Datos Anuales', @tabla)

    if @set_display[0] == 'show'
      case @tabla
      when 'datos_centros'
        @objeto = DatosCentro.first
      end
    elsif @set_display[0] == 'list'
      @coleccion = {}
      @coleccion[@tabla] = @tabla.classify.constantize.all
    end

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
#    @side_name = 'Administración'
#    @side_link = '/recursos/administracion'
#    @sidebar = side_list('Administración')

    carga_sidebar('Administración')

    # parámetro 't'
    @t = params[:t].blank? ? 'Administradores' : params[:t]

    # Trae nombre de la tabla desde concer 'sidebar'
    @tabla = hash_tablas('Administración')[@t]
    @set_display = set_tabla('Administración', @tabla)

    if @set_display[0] == 'show'
    elsif @set_display[0] == 'list'
      @new_button = true unless ['Perfiles'].include?(@t)

      @coleccion = {}
      @coleccion[@tabla] = @tabla.classify.constantize.all
    end

    # INICIALIZA TABLAS
    case @t
    when 'Disciplinas'
      if @coleccion[@tabla].empty?
        Disciplina::DISCIPLINAS.each do |disciplina|
          Disciplina.create(disciplina: disciplina)
        end
      end
    when 'Público Objetivo'
      if @coleccion[@tabla].empty?
        PublicoObjetivo::PUBLICOS_OBJETIVO.each do |po|
          PublicoObjetivo.create(publico_objetivo: po)
        end
      end
    end
    
  end

  def procesos
    proyecto_activo = Proyecto.find(session[:proyecto_activo]['id'])

    @carpeta = proyecto_activo.carpetas.find_by(carpeta: 'plant-pollinator interaction')
    if @carpeta.blank?
      @carpeta = proyecto_activo.carpetas.create(carpeta: 'plant-pollinator interaction')
    end

    @huerfanas = proyecto_activo.publicaciones.map {|pub| pub.id if pub.carpetas.empty?}.compact

    @pubs = Publicacion.where(id: @huerfanas)

    @pubs.each do |huerfana|
      huerfana.carpetas << @carpeta
    end

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
 