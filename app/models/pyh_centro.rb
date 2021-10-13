class PyhCentro < ApplicationRecord

	DISPLAY_FIELDS = [
		['premio',       'Premio',                               'string'],
		['fecha',        'Fecha',                                'datetime'],
		['contribucion', 'Contribución del Científico Premiado', 'string'],
		['institucion',  'Institución Otorgante',                'string'],
		['pais',         'País',                                 'string']
	]

	TABLA_FIELDS = [
		['premio',      'show'],
		['propietario', 'normal']
	]

	validates_presence_of :premio, :fecha, :contribucion, :institucion, :pais

end
