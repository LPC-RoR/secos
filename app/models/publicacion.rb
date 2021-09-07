class Publicacion < ApplicationRecord

	CATEGORIAS = [
		'ISI/WOS o Similar a ISI/WOS standard',
		'SCIELO o Similar a SCIELO standard',
		'Libros y Capítulos de Libros',
		'Otras Publicaciones',
		'Scopus'
	]

	CUARTILES = [
		'Q1',
		'Q2',
		'Q3',
		'Q4'
	]

	TABLA_FIELDS = [
		['autores', 'normal'], 
		['titulo',  'normal']
	]

	has_many :p_lis
	has_many :linea_investigaciones, through: :p_lis

	has_many :pis
	has_many :investigadores, through: :pis

	mount_uploader :documento_relacionado, ArchivoUploader
end
