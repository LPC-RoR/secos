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

	DISPLAY_FIELDS = [
		['titulo',          'Título',                     'string'],
		['descripcion',     'Descripción',                'text'],
		['categoria',       'Categoría',                  'string'],
		['solicitante',     'Solicitante',                'string'],
		['inventor',        'Inventor',                   'string'],
		['paises',          'País(es) Donde se Presenta', 'asociation'],
		['n_solicitud',     'Número de Solicitud',        'string'],
		['fecha_solicitud', 'Fecha de Solicitud',         'datetime'],
		['estado',          'Estado',                     'string'],
		['n_registro',      'Número de Registro',         'string'],
		['fecha_registro',  'Fecha de Registro',          'datetime']
	]

	TABLA_FIELDS = [
		['titulo',      'show'],
		['propietario', 'normal']
	]

	validates_presence_of :titulo, :descripcion, :categoria, :solicitante, :inventor, :fecha_solicitud, :estado

	has_many :pat_pais
	has_many :paises, through: :pat_pais

end
