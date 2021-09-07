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

	TABLA_FIELDS = [
		['producto', 'normal']
	]

	has_many :pp_is
	has_many :investigadores, through: :pp_is

	has_many :pp_pos
	has_many :publico_objetivos

end
