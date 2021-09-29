class PyhInvestigador < ApplicationRecord

	DISPLAY_FIELDS = [
		['investigador', 'Investigador',                         'string'],
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

end
