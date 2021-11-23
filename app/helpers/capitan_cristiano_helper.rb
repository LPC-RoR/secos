module CapitanCristianoHelper

	## ------------------------------------------------------- CRISTIANO BASE
	def cristiano(text, origen, destino)
		if ['AppAdministrador', 'app_administradores'].include?(text)
			'Administrador'
		elsif ['AppNomina', 'app_nominas'].include?(text)
			'Nómina'
		elsif ['AppPerfil', 'app_perfiles'].include?(text)
			'Perfil'
		elsif ['AppObservacion', 'app_observaciones'].include?(text)
			'Observación'
		elsif ['AppMejora', 'app_mejoras'].include?(text)
			'Mejora'
		elsif ['AppImagen', 'app_imagenes'].include?(text)
			'Imagen'
		elsif ['AppContacto', 'app_contactos'].include?(text)
			'Contacto'
		elsif ['AppMensaje', 'app_mensajes'].include?(text)
			'Mensaje'
		elsif ['AppDirectorio', 'app_directorios'].include?(text)
			'Directorio'
		elsif ['AppDocumento', 'app_documentos'].include?(text)
			'Documento'
		elsif ['AppArchivo', 'app_archivos'].include?(text)
			'Archivo'
		elsif ['HTema', 'h_temas'].include?(text)
			'Tema'
		elsif ['HLink', 'h_links'].include?(text)
			'Enlace'
		elsif ['HImagen', 'h_imagenes'].include?(text)
			'Imagen'
		elsif ['SbLista', 'sb_listas'].include?(text)
			'Menú lateral'
		elsif ['SbElemento', 'sb_elementos'].include?(text)
			'Elemento menú lateral'
		elsif ['HlpTutorial', 'hlp_tutoriales'].include?(text)
			'Tutorial'
		elsif ['HlpPaso', 'hlp_pasos'].include?(text)
			'Paso'
		elsif ['st_modelo', 'StModelo', 'st_modelos'].include?(text)
			'Modelo'
		elsif ['st_estado', 'StEstado', 'st_estados'].include?(text)
			'Estado'
		elsif ['created_at'].include?(text)
			'Fecha'
		else
			cristiano_app(text, origen, destino)
		end
	end

	def cristiano_app(text, origen, destino)
		if ['nombre_espaniol'].include?(text)
			'Nombre (Español)'
		elsif ['linea_investigacion', 'LineaInvestigacion', 'linea_investigaciones'].include?(text)
			'Línea Investigación'
		elsif ['Aco', 'acos'].include?(text)
			'Actividad Científica Organizada'
		elsif ['titulo_evento'].include?(text)
			'Título Evento'
		elsif ['publicacion', 'Publicacion', 'publicaciones'].include?(text)
			'Publicación'
		elsif ['titulo'].include?(text)
			'Título'
		elsif ['PresentacionCongreso', 'presentacion_congresos'].include?(text)
			'Presentación Congreso'
		elsif ['nombre_presentacion'].include?(text)
			'Nombre Presentación'
		elsif ['PyhInvestigador', 'pyh_investigadores'].include?(text)
			'Premios y Honores Investigador'
		elsif ['PyhCentro', 'pyh_centros'].include?(text)
			'Premios y Honores Centro'
		elsif ['ComiteEditorial', 'comite_editoriales'].include?(text)
			'Comité Editorial'
		elsif ['nombre_publicacion'].include?(text)
			'Nombre Publicación'
		elsif ['FormacionJoven', 'formacion_jovenes'].include?(text)
			'Formación de Jóvenes'
		elsif ['descripcion_pasantia'].include?(text)
				'Descripción Pasantía'
		elsif ['RfColaboracion', 'rf_colaboraciones'].include?(text)
			'Red Formal de Colaboración'
		elsif ['RColaboracion', 'r_colaboraciones'].include?(text)
			'Red de Colaboración'
		elsif ['ActividadDifusion', 'actividad_difusiones'].include?(text)
			'Actividad de Difusión'
		elsif ['ProductoPme', 'producto_pmes'].include?(text)
			'Producto de PME'
		elsif ['AporteActividad', 'aporte_actividades'].include?(text)
			'Fondos Actividad de Difusión'
		elsif ['ArticuloEntrevista', 'articulo_entrevistas'].include?(text)
			'Artículo o Entrevista'
		elsif ['Vinculo', 'vinculos'].include?(text)
			'Vínculo con otro Sector'
		elsif ['TecnicoAdministrativo', 'tecnico_administrativos'].include?(text)
			'Técnico o Administrativo'
		elsif ['propietario'].include?(text)
			'Creado por'
		elsif ['grado_academico', 'GradoAcademico', 'grado_academicos'].include?(text)
			'Grado Académico'
		elsif ['publico_objetivo', 'PublicoObjetivo', 'publico_objetivos'].include?(text)
			'Público Objetivo'
		elsif ['Nomina' 'nominas'].include?(text)
			'Nómina'
		else
			case origen
			when 'field'
				case destino
				when 'singular'
					text.humanize
				when 'plural'
				end
			when 'class'
				case destino
				when 'singular'
					text.tableize.humanize.singularize
				when 'plural'
					text.pluralize
				end
			when 'controller'
				case destino
				when 'singular'
					text.humanize.singularize
				when 'plural'
				end
			else
				text
			end
		end
	end

end