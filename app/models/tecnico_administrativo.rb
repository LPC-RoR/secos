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

	DISPLAY_FIELDS = [
		['tipo_documento', 'Tipo Documento',                         'string'],
		['rut_pasaporte',       'RUT / Pasaporte',                               'string'],
		['nombres',        'Nombres',                                'string'],
		['paterno', 'Apellido Paterno', 'string'],
		['materno',  'Apellido Materno',   'string'],
		['fecha_nacimiento',   'Fecha de Nacimiento',   'datetime'],
		['nacionalidad', 'Nacionalidad', 'string'],
		['genero', 'Género', 'string'],
		['categoria',   'Categoría', 'string'],
		['relacion_centro',    'Relación con el Centro',   'string'],
		['tipo_financiamiento',    'Tipo de Financiamiento',   'string'],
		['fecha_ingreso',    'Fecha de Ingreso al Centro',   'datetime'],
		['fecha_desvinculacion',    'Fecha de Desvinculación',   'datetime']
	]

	TABLA_FIELDS = [
		['nombre', 'show']
	]

	def nombre
		"#{nombres} #{paterno} #{materno}"
	end

end
