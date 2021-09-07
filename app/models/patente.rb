class Patente < ApplicationRecord

	CATEGORIAS = [
		'Patente',
		'Modelo Utilidad',
		'Trazado Circuito Integrado',
		'Diseño Industrial',
		'Dibujo Industrial',
		'Marcas'
	]

	ESTADOS = [
		'Presentada',
		'En Proceso',
		'Concedida',
		'Abandonada',
		'Rechazada'
	]

	TABLA_FIELDS = [
		['titulo', 'normal']
	]

	has_many :pat_pais
	has_many :paises, through: :pat_pais

end
