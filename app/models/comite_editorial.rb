class ComiteEditorial < ApplicationRecord

	DISPLAY_FIELDS = [
		['nombre_publicacion', 'Nombre Publicación', 'string'],
		['categoria',          'Categoría',          'string'],
		['otra_categoria',     'Otra Categoría',     'string'],
		['anio_inicio',        'Año Inicio',         'string'],
		['anio_termino',       'Año Término',        'string']
	]

	TABLA_FIELDS = [
		['publicacion', 'show']
	]

	has_many :ci_is
	has_many :investigadores, through: :ci_is

end
