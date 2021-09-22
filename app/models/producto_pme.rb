class ProductoPme < ApplicationRecord

	TIPOS_PRODUCTO = [
		'Artículo',
		'Libro',
		'Folleto',
		'Base de Datos',
		'Diccionario',
		'Guía',
		'CD Interactivo',
		'Mapa',
		'Novela',
		'Foto',
		'Guión de Juego',
		'Poster',
		'Reporte',
		'Software',
		'Texto de Estudio',
		'Guión de TV o Película'
	]

	DISPLAY_FIELDS = [
		['fecha',              'Fecha',                 'datetime'],
		['producto',           'Producto',              'string'],
		['objetivo',           'Objetivo del Producto', 'text'],
		['alcance',            'Alcance',               'string'],
		['tipo_producto',      'Tipo Producto',         'string'],
		['otro_tipo_producto', 'Otro Tipo de Producto', 'string']
	]

	TABLA_FIELDS = [
		['producto', 'show']
	]

	has_many :pp_is
	has_many :investigadores, through: :pp_is

	has_many :pp_pos
	has_many :publico_objetivos, through: :pp_pos

end
