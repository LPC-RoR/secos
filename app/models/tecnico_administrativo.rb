class TecnicoAdministrativo < ApplicationRecord

	CATEGORIAS = [
		'Asistentes y Técnicos',
		'Personal Administrativo'
	]

	RELACIONES_CENTRO = [
		'Full Time',
		'Part Time'
	]

	FINANCIAMIENTOS = [
		'Fondos ICM',
		'Adscrito',
		'Financiamiento Externo',
		'Mixto (ICM + Externo)'
	]

	TABLA_FIELDS = [
		['tecnico_administrativo', 'normal']
	]

end
