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
		['alcance',             'Alcance',             'string'],
		['tipo',                'Tipo',                'string'],
		['otro_tipo',           'Otro Tipo',           'string'],
		['organizacion',        'Organización',        'string'],
		['nombre_presentacion', 'Nombre Presentación', 'string'],
		['nombre_evento',       'Nombre del Evento',   'string'],
		['link_presentacion',   'Link a Presentación', 'string'],
		['fecha',               'Fecha',               'datetime'],
		['ciudad',              'Ciudad',              'string'],
		['pais',                'País',                'string']
	]

	TABLA_FIELDS = [
		['nombre_presentacion', 'show']
	]

	has_many :pc_is
	has_many :investigadores, through: :pc_is

end