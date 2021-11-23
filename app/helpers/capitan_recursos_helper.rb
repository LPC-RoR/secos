module CapitanRecursosHelper
	## ------------------------------------------------------- GENERAL

	def app_setup
		{
			nombre: 'Secos',
			home_link: 'http://www.secos.cl',
			logo_navbar: 'logo_navbar.gif'
		}
	end

	def image_size
		{
			portada: nil,
			tema: 'half',
			foot: 'quarter'
		}
	end

	def font_size
		{
			title: 4,
			title_tema: 1,
			detalle_tema: 6
		}
	end

	def app_color
		{
			app: 'primary',
			navbar: 'primary',
			help: 'dark',
			data: 'success',
			title_tema: 'primary',
			detalle_tema: 'primary'
		}
	end

	def image_class
		{
			portada: img_class[:centrada],
			image_tema: img_class[:centrada],
			foot: img_class[:centrada]
		}
	end

	## ------------------------------------------------------- LAYOUTS CONTROLLERS

	def app_sidebar_controllers
		[
			'recursos',
			'datos_centros', 'linea_investigaciones', 'investigadores', 'acos', 'publicaciones', 'patentes',
			'presentacion_congresos', 'pyh_investigadores', 'pyh_centros', 'comite_editoriales', 'formacion_jovenes',
			'tesis_finalizadas', 'pasantia_internos', 'pasantia_externos', 'rf_colaboraciones', 'r_colaboraciones',
			'actividad_difusiones', 'producto_pmes', 'aporte_actividades', 'articulo_entrevistas', 'vinculos',
			'tecnico_administrativos', 'fuente_financiamientos', 
			'disciplinas', 'grado_academicos', 'publico_objetivos']
	end

	def app_bandeja_controllers
		[
		]
	end

	## ------------------------------------------------------- SCOPES & PARTIALS

	def app_controllers_scope
		{
		}
	end

	def app_scope_controller(controller)
		nil
	end

	## ------------------------------------------------------- TABLA | BTNS

	def sortable_fields
		{
			'controller' => ['campo1', 'campo2']
		}
	end

	# En modelo.html.erb define el tipo de fila de tabla
	# Se usa para marcar con un color distinto la fila que cumple el criterio
	def table_row_type(objeto)
		'default'
	end

	## ------------------------------------------------------- TABLA | BTNS

	def app_alias_tabla(controller)
		controller
	end

	def app_new_button_conditions(controller)
		if ['linea_investigaciones', 'investigadores', 'pyh_centros', 'aporte_actividades', 'tecnico_administrativos', 'fuente_financiamientos'].include?(controller)
			admin?
		elsif ['mensajes'].include?(controller)
			@tab == 'ingreso'
		elsif ['directorios'].include?(controller)
			admin? and action_name == 'index'
		elsif ['tema_ayudas', 'tutoriales'].include?(controller)
			admin?
		elsif ['archivos', 'documentos'].include?(controller)
			false
		else
			true
		end
	end

	def app_crud_conditions(objeto, btn)
		if ['LineaInvestigacion', 'Investigador', 'PyhCentro', 'AporteActividad', 'TecnicoAdministrativo', 'FuenteFinanciamiento'].include?(objeto.class.name)
			admin?
		elsif ['Aco', 'Publicacion', 'Patente', 'PresentacionCongreso', 'PyhInvestigador', 'ComiteEditorial', 'FormacionJoven', 'TesisFinalizada', 'PasantiaInterno', 'PasantiaExterno', 'RfColaboracion', 'RColaboracion', 'ActividadDifusion', 'ProductoPme', 'ArticuloEntrevista', 'Vinculo'].include?(objeto.class.name)
			(objeto.propietario == current_usuario.email) or admin?
		elsif ['Archivo', 'Documento'].include?(controller)
			admin?
		else
			case objeto.class.name
			when 'Modelo'
				admin?
			else
				['TemaAyuda', 'Tutorial', 'Paso'].include?(objeto.class.name) ? (usuario_signed_in? ? admin? : false) : true
			end
		end
	end

	def show_link_condition(objeto)
		# usado para condicionar el uso de campos show en tablas
		true
	end

	## ------------------------------------------------------- SHOW

	# Método de apoyo usado en get_new_link (abajo)
	def app_show_title(objeto)
		case objeto.class.name
		when 'Publicacion'
			objeto.titulo
		when 'Aco'
			objeto.titulo_evento
		when 'Patente'
			objeto.titulo
		when 'PresentacionCongreso'
			objeto.nombre_presentacion
		when 'PyhInvestigador'
			objeto.premio
		when 'PyhCentro'
			objeto.premio
		when 'ComiteEditorial'
			objeto.nombre_publicacion
		when 'FormacionJoven'
			objeto.nombre
		when 'TesisFinalizada'
			objeto.nombre_tesis
		when 'PasantiaInterno'
			objeto.estudiante
		when 'PasantiaExterno'
			objeto.nombre
		when 'RfColaboracion'
			objeto.nombre_red
		when 'RColaboracion'
			objeto.nombre_red
		when 'ActividadDifusion'
			objeto.titulo_evento
		when 'ProductoPme'
			objeto.producto
		when 'AporteActividad'
			objeto.actividad_producto
		when 'ArticuloEntrevista'
			objeto.actividad
		when 'Vinculo'
			objeto.actividad
		when 'TecnicoAdministrativo'
			objeto.nombre
		when 'FuenteFinanciamiento'
			objeto.fondos
		else
			objeto.send(objeto.class.name.tableize.singularize)
		end
	end

end
