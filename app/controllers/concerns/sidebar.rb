module Sidebar
	extend ActiveSupport::Concern

	def side_list(list_name)
		case list_name
		when 'Ingreso Datos Anuales'
			[
				[1, 'item', 'Datos Centro'],
				[1, 'list', 'Investigación'],
				[2, 'item', 'Líneas de Investigación'],
				[2, 'item', 'Investigadores Centro'],
				[2, 'item', 'Actividades Científicas Organizadas'],
				[2, 'item', 'Publicaciones'],
				[2, 'list', 'Propiedad Intelectual'],
				[3, 'item', 'Patentes'],
				[2, 'item', 'Presentaciones Congresos'],
				[2, 'list', 'Premios y Honores'],
				[3, 'item', 'P. y H. Investigadores'],
				[3, 'item', 'P. y H. Centro'],
				[1, 'item', 'Comités Editoriales'],
				[1, 'list', 'Formación Capital Humano'],
				[2, 'item', 'Formación de jóvenes'],
				[2, 'item', 'Tésis Finalizadas'],
				[2, 'list', 'Pasantías'],
				[3, 'item', 'Internos'],
				[3, 'item', 'Externos'],
				[1, 'list', 'Redes de Colaboración'],
				[2, 'item', 'Redes Formales de Colaboración'],
				[2, 'item', 'Redes de Colaboración'],
				[1, 'list', 'Actividades de Difusión y PME'],
				[2, 'item', 'Actividades de Difusión'],
				[2, 'item', 'Producto de PME (concurso milenio)'],
				[2, 'item', 'Fondos Actividades de Difusión (concurso milenio)'],
				[2, 'item', 'Artículos y Entrevistas en Medios de Comunicación'],
				[1, 'item', 'Vínculos con Otros Sectores'],
				[1, 'item', 'Personal Técnico y Administrativo'],
				[1, 'item', 'Fuentes de Financiamiento']
			]
		when 'Administración'
			[
				[1, 'item', 'Administradores'],
				[1, 'item', 'Nómina'],
				[1, 'item', 'Perfiles'],
				[1, 'list', 'Archivos'],
				[2, 'item', 'Datos Centro'],
				[2, 'item', 'Disciplinas'],
				[2, 'item', 'Grados Académicos'],
			]
		end
	end

	def hash_tablas(list_name)
		case list_name
		when 'Ingreso Datos Anuales'
		{
			'Datos Centro'                                      => 'datos_centros',
			'Líneas de Investigación'                           => 'linea_investigaciones',
			'Investigadores Centro'                             => 'investigadores',
			'Actividades Científicas Organizadas'               => 'acos',
			'Publicaciones'                                     => 'publicaciones',
			'Patentes'                                          => 'patentes',
			'Presentaciones Congresos'                          => 'presentacion_congresos',
			'P. y H. Investigadores'                            => 'pyh_investigadores',
			'P. y H. Centro'                                    => 'pyh_centros',
			'Comités Editoriales'                               => 'comite_editoriales',
			'Formación de jóvenes'                              => 'formacion_jovenes',
			'Tésis Finalizadas'                                 => 'tesis_finalizadas',
			'Internos'                                          => 'pasantia_internos',
			'Externos'                                          => 'pasantia_externos',
			'Redes Formales de Colaboración'                    => 'rf_colaboraciones',
			'Redes de Colaboración'                             => 'r_colaboraciones',
			'Actividades de Difusión'                           => 'actividad_difusiones',
			'Producto de PME (concurso milenio)'                => 'producto_pmes',
			'Fondos Actividades de Difusión (concurso milenio)' => 'aporte_actividades',
			'Artículos y Entrevistas en Medios de Comunicación' => 'articulo_entrevistas',
			'Vínculos con Otros Sectores'                       => 'vinculos',
			'Personal Técnico y Administrativo'                 => 'tecnico_administrativos',
			'Fuentes de Financiamiento'                         => 'fuente_financiamientos'
		}
		when 'Administración'
			{
				'Administradores'   => 'administradores',
				'Nómina'            => 'nominas',
				'Perfiles'          => 'perfiles',
				'Datos Centro'      => 'datos_centros',
				'Disciplinas'       => 'disciplinas',
				'Grados Académicos' => 'grado_academicos'
			}
		end
	end

	def set_tabla(sidebar, tabla)
		case sidebar
		when 'Ingreso Datos Anuales'
			case tabla
			when 'datos_centros'
				['show']
			else
				['list', true]
			end
		when 'Administración'
			['list', true]
		end
	end

	def carga_sidebar(nombre)
	    @side_name = nombre
    	@sidebar = side_list(nombre)
		case nombre
		when 'Ingreso Datos Anuales'
		    @side_link = '/recursos/ingreso_datos_anuales'
		when 'Administración'
		    @side_link = '/recursos/administracion'
		end
	end

end
