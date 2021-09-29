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

	DISPLAY_FIELDS = [
		['fecha_publicacion',       'Fecha de Publicación',                           'datetime'],
		['categoria_publicacion',   'Categoria Publicación',                          'string'],
		['otra_categoria',          'Otra Categoría',                                 'string'],
		['titulo',                  'Título',                                         'string'],
		['autores',                 'Autores',                                        'string'],
		['fuente',                  'Fuente',                                         'string'],
		['volumen',                 'Volumen',                                        'string'],
		['numero',                  'Número',                                         'string'],
		['pagina_inicial',          'Página Inicial',                                 'string'],
		['issn',                    'ISSN',                                           'string'],
		['doi',                     'DOI',                                            'string'],
		['cuartil',                 'Cuartil',                                        'string'],
		['n_autores_inv_asociados', 'N° Autores Investigadores Asociados del Centro', 'string'],
		['n_autores_estudiantes',   'N° Autores Estudiantes',                         'string'],
		['n_autores_otros',         'N° Autores "Otros Investigadores"',              'string'],
		['linea_investigaciones',   'Líneas de Investigación Vinculadas',             'asociation'],
		['investigadores',          'Invstigadores Asociados',                        'asociation'],
		['ligada_red_formal',       '¿Ligada a Red Formal de Colaboración?',          'string'],
		['red_formal',              'Red Formal de Colaboración en la que Participa', 'string'],
		['documento_relacionado',   'Documento Relacionado',                          'file']
	]

	TABLA_FIELDS = [
		['autores',     'normal'], 
		['titulo',      'show'],
		['propietario', 'normal']
	]

	has_many :p_lis
	has_many :linea_investigaciones, through: :p_lis

	has_many :pis
	has_many :investigadores, through: :pis

	mount_uploader :documento_relacionado, ArchivoUploader
end
