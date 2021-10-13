class PresentacionCongreso < ApplicationRecord

	TIPOS = [
		'Conferencia',
		'Seminario',
		'Mesa Redonda',
		'Taller',
		'Comunicación Oral',
		'Poster',
		'Otro'
	]

	ORGANIZACIONES = [
		'Invitado',
		'Inscrito',
		'Organizador',
		'Participa'
	]

	DISPLAY_FIELDS = [
		['alcance',             'Alcance',                               'string'],
		['tipo',                'Tipo',                                  'string'],
		['otro_tipo',           'Otro Tipo',                             'string'],
		['organizacion',        'Organización',                          'string'],
		['investigadores',      'Autores Clasificados como "Asociados"', 'asociation'],
		['iotros',              'Autores Clasificados como "Otros"',     'asociation'],
		['formacion_jovenes',   'Autores Clasificados como Estudiantes', 'asociation'],
		['nombre_presentacion', 'Nombre Presentación',                   'string'],
		['nombre_evento',       'Nombre del Evento',                     'string'],
		['link_presentacion',   'Link a Presentación',                   'string'],
		['fecha',               'Fecha',                                 'datetime'],
		['ciudad',              'Ciudad',                                'string'],
		['pais',                'País',                                  'string']
	]

	TABLA_FIELDS = [
		['nombre_presentacion', 'show'],
		['propietario',         'normal']
	]

	validates_presence_of :alcance, :tipo, :organizacion, :nombre_presentacion, :nombre_evento, :fecha, :pais

	has_many :pc_is
	has_many :investigadores, through: :pc_is

	has_many :pc_iotros
	has_many :iotros, through: :pc_iotros, source: :investigador

	has_many :pc_fjos
	has_many :formacion_jovenes, through: :pc_fjos

end
