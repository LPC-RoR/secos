class Aplicacion::RecursosController < ApplicationController
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
#  before_action :set_recurso, only: [:show, :edit, :update, :destroy]

  def home
    @coleccion = {}
    @coleccion['tema_ayudas'] = TemaAyuda.where(tipo: 'inicio').where(activo: true).order(:orden)
  end

  def ingreso_datos_anuales
    @t = params[:t].blank? ? 'Datos Centro' : params[:t]

    @coleccion = {}

    case @t
    when 'Datos Centro'
      @tabla = 'datos_centros'
    when 'Líneas de Investigación'
      @tabla = 'linea_investigaciones'
    when 'Investigadores Centro'
      @tabla = 'investigadores'
    when 'Actividades Científicas Organizadas'
      @tabla = 'acos'
    when 'Publicaciones'
      @tabla = 'publicaciones'
    when 'Patentes'
      @tabla = 'patentes'
    when 'Presentaciones Congresos'
      @tabla = 'presentacion_congresos'
    when 'P. y H. Investigadores'
      @tabla = 'pyh_investigadores'
    when 'P. y H. Centro'
      @tabla = 'pyh_centros'
    when 'Comités Editoriales'
      @tabla = 'comite_editoriales'
    when 'Formación de jóvenes'
      @tabla = 'formacion_jovenes'
    when 'Tésis Finalizadas'
      @tabla = 'tesis_finalizadas'
    when 'Internos'
      @tabla = 'pasantia_internos'
    when 'Externos'
      @tabla = 'pasantia_externos'
    when 'Redes Formales de Colaboración'
      @tabla = 'rf_colaboraciones'
    when 'Redes de Colaboración'
      @tabla = 'r_colaboraciones'
    when 'Actividades de Difusión'
      @tabla = 'actividad_difusiones'
    when 'Producto de PME (concurso milenio)'
      @tabla = 'producto_pmes'
    when 'Fondos Actividades de Difusión (concurso milenio)'
      @tabla = 'aporte_actividades'
    when 'Artículos y Entrevistas en Medios de Comunicación'
      @tabla = 'articulo_entrevistas'
    when 'Vínculos con Otros Sectores'
      @tabla = 'vinculos'
    when 'Personal Técnico y Administrativo'
      @tabla = 'tecnico_administrativos'
    when 'Fuentes de Financiamiento'
      @tabla = 'fuente_financiamientos'
    end

    @new_button = true

    @coleccion[@tabla] = @tabla.classify.constantize.all
  end

  def administracion
    @t = params[:t].blank? ? 'Administradores' : params[:t]

    @coleccion = {}

    case @t
    when 'Administradores'
      @tabla = 'administradores'
    when 'Nómina'
      @tabla = 'nominas'
    when 'Perfiles'
      @tabla = 'perfiles'
    when 'Datos Centro'
      @tabla = 'datos_centros'
    when 'Disciplinas'
      @tabla = 'disciplinas'
    when 'Grados Académicos'
      @tabla = 'grado_academicos'
    end

    @new_button = true unless ['Perfiles'].include?(@t)

    @coleccion[@tabla] = @tabla.classify.constantize.all
    
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
 