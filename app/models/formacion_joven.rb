class FormacionJoven < ApplicationRecord
	UNIVERSIDADES = [
		'CENTRO DE COMUNICACIÓN Y CULTURA PARA EL DESARROLLO',
		'CENTRO DE ESTUDIOS AVANZADOS EN ZONAS ÁRIDAS (CEAZA)',
		'CENTRO DE ESTUDIOS CIENTÍFICOS',
		'CENTRO DE ESTUDIOS DE LA MUJER',
		'CENTRO DE ESTUDIOS DE LA REALIDAD CONTEMPORÁNEA',
		'CENTRO DE ESTUDIOS PARA EL DESARROLLO DE LA MUJER',
		'CENTRO DE ESTUDIOS PARA EL DESARROLLO',
		'CENTRO DE GENÓMICA NUTRICIONAL AGRO ACUÍCOLA (CGNA)',
		'CENTRO DE INFORMACIÓN TECNOLÓGICA',
		'CENTRO DE INGENIERÍA DE LA INNOVACIÓN (CIN)',
		'CENTRO DE INVESTIGACIÓN CIENTÍFICO TECNOLÓGICO PARA LA MINERÍA (CICITEM)',
		'CENTRO DE INVESTIGACIÓN DE POLÍMEROS AVANZADOS (CIPA)',
		'CENTRO DE INVESTIGACIÓN EN ECOSISTEMAS DE LA PATAGONIA (CIEP)',
		'CENTRO DE INVESTIGACIÓN EN NUTRICIÓN, TECNOLOGÍA DE ALIMENTOS Y SUSTENTABILIDAD (CIEN AUTRAL)',
		'CENTRO DE INVESTIGACIÓN DE LA REALIDAD SOCIAL',
		'CENTRO DE INVESTIGACIÓN MINERA Y METALÚRGICA (CIMM)',
		'CENTRO DE INVESTIGACIÓN SOCIOCULTURAL BBELARMINO',
		'CENTRO LATINOAMERICANO DE ECONOMÍA Y POLÍTICA INTERNACIONAL',
		'CENTRO REGIONAL DE ESTUDIOS EN ALIMENTOS SALUDABLES (CREAS)',
		'CENTRO REGIONAL DE INVESTIGACIÓN Y DESARROLLO SUSTENTABLE DE ATACAMA (CRIDESAT)',
		'COMISIÓN CHILENA DE ENERGÍA NUCLEAR',
		'CORPORACIÓN REGIONAL DE DESARROLLO CIENTÍFICO Y TECNOLÓGICO DEL HOMBRE EN EL DESIERTO (CODECITE)',
		'CORPORACIÓN INVESTIGACIÓN ECONÓMICA PARA LATINOAMERICA',
		'FACUTAD LATINOAMERICANA DE CIENCIAS SOCIALES',
		'FUNDACIÓN CENTRO DE ESTUDIOS DEL CUATERNARIO DE FUEGO-PATAGONIA Y ANTÁRTICA (CEQUA)',
		'FUNDACIÓN CIENCIA PARA LA VIDA',
		'FUNDACIÓN OMORA',
		'FUNDACIÓN SENDA DARWIN',
		'iNSTITUTO ANTÁRTICO CHILENO',
		'INSTITUTO CHILENO DE MEDICINA REPRODUCTIVA',
		'INSTITUTO DE DINÁMICA CELULAR Y BIOTECNOLOGÍA',
		'INSTITUTO DE ECOLOGÍA Y BIODIVERSIDAD',
		'INSTITUTO DE ESTUDIOS MÉDICOS AVANZADOS',
		'INSTITUTO DE FOMENTO PESQUERO IFOP',
		'iNSTITUTO DE INVESTIGACIÓN PESQUERA',
		'INSTITUTO DE INVESTIGACIONES AGROPECUARIAS',
		'INSTITUTO DE NUTRICIÓN Y TECNOLOGÍA DE LOS ALIMENTOS',
		'INSTITUTO DE SALUD PÚBLICA DE CHILE',
		'INSTITUTO DE SISTEMAS COMPLEJOS DE VALPARAISO',
		'INSTITUTO FORESTAL',
		'INSTITUTO LATINOAMERICANO DE DOCTRINA Y ESTUDIOS SOCIALES',
		'INSTITUTO SISTEMAS COMPLEJOS DE INGENIERÍA',
		'INSTITUTO SUPERIOR DE ARTES Y CIENCIAS SOCIALES',
		'MUSEO CHILENO DE ARTE PRECOLOMBINO',
		'MUSEO NACIONAL DE HISTORIA NATURAL',
		'OTRA',
		'PROGRAMA DE ECONOMÍA DEL TRABAJO',
		'PROGRAMA INTERDISCIPLINARIO INVESTIGACIÓN EN EDUCACIÓN',
		'SERVICIO NACIONAL DE GEOLOGÍA Y MINERÍA',
		'UNIVERSIDAD ACADEMIA DE HUMANISMO CRISTIANO',
		'UNIVERSIDAD ADOLFO IBAÑEZ',
		'UNIVERSIDAD ADVENTISTA DE CHILE',
		'UNIVERSIDAD ALBERTO HURTADO',
		'UNIVERSIDAD ANDRES BELLO',
		'UNIVERSIDAD ARTURO PRAT',
		'UNIVERSIDAD AUTRAL DE CHILE',
		'UNIVERSIDAD AUTÓNOMA DE CHILE',
		'UNIVERSIDAD BERNARDO O\'HIGGINS',
		'UNIVERSIDAD BOLIVARIANA',
		'PONTIFICIA UNIVERSIDAD CATÓLICA DE CHILE',
		'UNIVERSIDAD CATÓLICA DE LA SANTISIMA CONCEPCIÓN',
		'UNIVERSIDAD CATÓLICA DE TEMUCO',
		'UNIVERSIDAD CATÓLICA DEL MAULE',
		'UNIVERSIDAD CATÓLICA DEL NORTE',
		'UNIVERSIDAD CATÓLICA SILVA HENRIQUEZ',
		'UNIVERSIDAD CENTRAL DE CHILE',
		'UNIVERSIDAD CHILENO BRITÁNICA',
		'UNIVERSIDAD DE ACONCAGUA',
		'UNIVERSIDAD DE ANTOFAGASTA',
		'UNIVERSIDAD DE ARTES Y CIENCIAS SOCIALES - UARCIS',
		'UNIVERSIDAD DE ATACAMA',
		'UNIVERSIDAD DE CIENCIAS DE LA INFORMÁTICA',
		'UNIVERSIDAD DE CONCEPCIÓN',
		'UNIVERSIDAD DE CHILE',
		'UNIVERSIDAD DE LA FRONTERA',
		'UNIVERSIDAD DE LA SERENA',
		'UNIVERSIDAD DE LAS AMÉRICAS',
		'UNIVERSIDAD DE LOS ANDES',
		'UNIVERSIDAD DE LOS LAGOS',
		'UNIVERSIDAD DE MAGALLANES',
		'UNIVERSIDAD DE PLAYA ANCHA DE CIENCIAS DE LA EDUCACIÓN',
		'UNIVERSIDAD DE SANTIAGO DE CHILE',
		'UNIVERSIDAD DE TALCA',
		'UNIVERSIDAD DE TARAPACÁ',
		'UNIVERSIDAD DE VALPARAÍSO',
		'UNIVERSIDAD DE VIÑA DEL MAR',
		'UNIVERSIDAD DEL BIO BIO',
		'UNIVERSIDAD DEL DESARROLLO',
		'UNIVERSIDAD DEL MAR',
		'UNIVERSIDAD DEL PACÍFICO',
		'UNIVERSIDAD DIEGO PORTALES',
		'UNIVERSIDAD FINIS TERRAE',
		'UNIVERSIDAD GABRIELA MISTRAL',
		'UNIVERSIDAD IBEROAMERICANA DE CIENCIAS Y TECNOLOGÍAS',
		'UNIVERSIDAD INTERNACIONAL SEK',
		'UNIVERSIDAD MAYOR',
		'UNIVERSIDAD METROPOLITANA DE CIENCIAS DE LA EDUCACIÓN UMCE',
		'UNIVERSIDAD MIGUEL DE CERVANTES',
		'UNIVERSIDAD PEDRO DE VALDIVIA',
		'UNIVERSIDAD REGIONAL SAN MARCOS',
		'UNIVERSIDAD SAN SEBASTIÁN',
		'UNIVERSIDAD SANTO TOMÁS',
		'UNIVERSIDAD TÉCNICA FEDERICO SANTA MARÍA',
		'UNIVERIDAD TECNOLÓGICA DE CHILE INACAP',
		'UNIVERSIDAD TECNOLÓGICA METROPOLITANA UTEM',
		'UNIVERSIDAD UNIACC, DE ARTES, CIENCIAS Y COMUNICACIÓN',
		'UNIVERSIDAD CATÓLICA DE VALPARAÍSO'
	]

	FINANCIAMIENTOS = [
		'Adscrito',
		'Beca ICM',
		'Beca financiamiento externo',
		'Mixto (ICM + Externo)'
	]

	DISPLAY_FIELDS = [
		['tipo_documento',               'Tipo Documento',                  'string'],
		['rut_pasaporte',                'RUT / Pasaporte',                 'string'],
		['nombres',                      'Nombres',                         'string'],
		['paterno',                      'Apellido Paterno',                'string'],
		['materno',                      'Apellido Materno',                'string'],
		['email',                        'E-mail',                          'string'],
		['disciplinas',                  'Disciplina',                      'asociation'],
		['nacionalidad',                 'Nacionalidad',                    'string'],
		['genero',                       'Género',                          'string'],
		['profesion_titulo_grado',       'Profesión/Título/Grado Actual',   'string'],
		['investigadores',               'Tutor',                           'asociation'],
		['universidad_formacion',        'Universidad de Formación',        'string'],
		['otra_universidad_formacion',   'Otra Universidad de Formación',   'string'],
		['region_universidad_formacion', 'Región Universidad de Formación', 'string'],
		['universidad_origen',           'Universidad de Origen',           'string'],
		['pais_universidad_origen',      'País Universidad de Origen',      'string'],
		['fecha_nacimiento',             'Fecha de Nacimiento',             'datetime'],
		['tipo_financiamiento',          'Tipo de Financiamiento',          'string'],
		['monto',                        'Monto',                           'string'],
		['relacion_centro',              'Relación con el Centro',          'string'],
		['fecha_ingreso_centro',         'Fecha de Ingreso al Centro',      'datetime'],
		['fecha_desvinculacion',         'Fecha de Desvinculación',         'datetime'],
		['estado',                       'Estado',                          'string']
	]

	TABLA_FIELDS = [
		['nombres', 'show'],
		['propietario',  'normal']
	]

	has_many :fj_nfores
	has_many :nivel_formaciones, through: :fj_nfores

	has_many :fj_dis
	has_many :disciplinas, through: :fj_dis

	has_many :fj_is
	has_many :investigadores, through: :fj_is

	has_many :pc_fjos
	has_many :presentacion_congresos, through: :pc_fjos

	has_many :rfc_fjos
	has_many :rf_colaboraciones, through: :rfc_fjos

	has_many :pp_fjos
	has_many :producto_pmes, through: :pp_fjos

	def nombre
		"#{nombres} #{paterno} #{materno}"
	end

	def formacion_joven
		self.nombre
	end

end
