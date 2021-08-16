class Aplicacion::RecursosController < ApplicationController
  before_action :inicia_sesion
  before_action :carga_temas_ayuda
#  before_action :set_recurso, only: [:show, :edit, :update, :destroy]

  def home
    @coleccion = {}
    @coleccion['tema_ayudas'] = TemaAyuda.where(tipo: 'inicio').where(activo: true).order(:orden)
  end

  def ingreso_datos_anuales
  end

  def administracion
    @coleccion = {}
    @coleccion['administradores'] = Administrador.all
    @coleccion['perfiles'] = Perfil.all
#    @coleccion['tipo_publicaciones'] = TipoPublficacion.all.order(:tipo_publicacion)
#    @coleccion['formato_cargas'] = FormatoCarga.all.order(:formato_carga)
    
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
 