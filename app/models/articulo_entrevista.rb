class ArticuloEntrevista < ApplicationRecord

	ACTIVIDADES = [
		'Artículo',
		'Entrevista'
	]

	TIPOS_MEDIO = [
		'Periódico',
		'Revista',
		'Boletín',
		'Sitio Web',
		'Radio',
		'Televisión'
	]

	ALCANCES = [
		'Nacional',
		'Internacional',
		'Regional',
		'Local'
	]

	TABLA_FIELDS = [
		['actividad', 'normal']
	]

	has_many :ae_is
	has_many :investigadores, through: :ae_is

	has_many :ae_lis
	has_many :linea_investigaciones, through: :ae_lis

	has_many :ae_pos
	has_many :publico_objetivos, through: :ae_pos

	mount_uploader :documento_relacionado, ArchivoUploader
end
