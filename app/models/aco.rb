class Aco < ApplicationRecord

	TIPOS_EVENTO = [
		'Conferencia',
		'Seminario',
		'Foro',
		'Exhibición',
		'Workshop',
		'Competencia',
		'Concurso',
		'Video Conferencia',
		'Otro'
	]

	DISPLAY_FIELDS = [
		['titulo_evento',             'Título Evento',                     'string'],
		['tipo_evento',               'Tipo Evento',                       'string'],
		['otro_tipo_evento',          'Otro Tipo Evento',                  'string'],
		['alcance',                   'Alcance',                           'string'],
		['duracion_dias',             'Duración en Días',                  'string'],
		['fecha_inicio',              'Fecha de Inicio'                    'datetime'],
		['fecha_termino',             'Fecha de Término',                  'datetime'],
		['pais',                      'País',                              'string'],
		['ciudad',                    'Ciudad',                            'string'],
		['n_asistentes',              'Número de Asistentes',              'string'],
		['n_expositores_milenio',     'Número de Expositores Milenio',     'string'],
		['n_expositores_extranjeros', 'Número de Expositores Extranjeros', 'string'],
		['n_expositores_nacionales',  'Número de Expositores Nacionales',  'string'],
		['investigador_responsable',  'Investigador Responsable',          'string'],
		['publico_objetivos',         'Publico Objetivo',                  'asociation']
	]


	TABLA_FIELDS = [
		['titulo_evento', 'show'], 
		['propietario',   'normal']
	]

	has_many :aco_pos
	has_many :publico_objetivos, through: :aco_pos

end
