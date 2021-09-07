class Vinculo < ApplicationRecord

	TIPOS_ACTIVIDAD = [
		'Actividad Prospectiva',
		'Capacitación',
		'Desarrollo de Estudio',
		'Desarrollo de Proyecto',
		'Entrenamiento Científico',
		'Instalación de Científico',
		'Otra'
	]

	TIPOS_INSTITUCION = [
		'Industria',
		'Instituciones Educativas no Universitarias',
		'Instituciones Públicas o Privadas',
		'Otra',
		'Spin Off'
	]

	SECTORES_ECONOMICOS = [
		'Actividades empresariales',
		'Acuicultura',
		'Agricultura',
		'Alimentos procesados y bebidas no alcoholicas',
		'Apicultura',
		'Biotecnología',
		'Capital humano',
		'Comercio',
		'Comunicaciones',
		'Construcción',
		'Educación',
		'Energía',
		'Enseñanza',
		'Financiero',
		'Floricultura',
		'Forestal',
		'Fruticultura',
		'Hoteles',
		'Industrias creativas (Audio-Visuales-Literatura)',
		'Logística',
		'Manufactura metalmecánica',
		'Medicina y salud humana',
		'Medio ambiente',
		'Minería',
		'Otras manofacturas (vidrio, plástico, tabaco, textil, etc.)',
		'Otro',
		'Pecuario',
		'Pesca artesanal',
		'Pesca industrial',
		'Sector público',
		'Servicios financieros y empresariales',
		'Silvicultura',
		'Sustancias químicas',
		'TIC\'s',
		'Transporte',
		'Turismo',
		'Vitivinícola'
	]

	TABLA_FIELDS = [
		['actividad', 'normal']
	]

end
