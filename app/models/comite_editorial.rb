class ComiteEditorial < ApplicationRecord

	DISPLAY_FIELDS = [
		['investigadores',     'Miembro Comité',     'asociation'],
		['nombre_publicacion', 'Nombre Publicación', 'string'],
		['categoria',          'Categoría',          'string'],
		['otra_categoria',     'Otra Categoría',     'string'],
		['anio_inicio',        'Año Inicio',         'string'],
		['anio_termino',       'Año Término',        'string']
	]

	TABLA_FIELDS = [
		['nombre_publicacion', 'show'],
		['propietario',  'normal']
	]

	validates_presence_of :nombre_publicacion, :categoria, :anio_inicio

	has_many :ci_is
	has_many :investigadores, through: :ci_is

end
