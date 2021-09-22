class FuenteFinanciamiento < ApplicationRecord

	FONDOS = [
		'Aporte Institución Albergante',
		'Beca Otros',
		'CONICYT - Otro',
		'CONICYT - Anillo',
		'CONICYT - Capitan Human',
		'CONICYT - EXPLORA',
		'CONICYT - Fondos Basales',
		'CORFO - FIC',
		'CORFO - Innova Chile',
		'CORFO - Otro',
		'FONDAP',
		'FONDECYT',
		'FONDEF',
		'Otros Fondos Internacionales',
		'Fondos Sector Minero',
		'Fondos Sector Salud - Laborartorios',
		'Fundación para Investigación',
		'Observatorio Astronómico',
		'Otros Fondos Sector Privado',
		'Otros Fondos Sector Público',
		'Universidad Extranjera',
		'Otro',
		'Fondos ICM'
	]

	DISPLAY_FIELDS = [
		['fondos',               'Fondos',                  'string'],
		['otro_fondo',                'Otro Fondo',                 'string'],
		['monto_pesos',                      'Monto en Pesoso',                         'string']
	]

	TABLA_FIELDS = [
		['fondos', 'show']
	]

end
