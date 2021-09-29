class TecnicoAdministrativo < ApplicationRecord

	CATEGORIAS = [
		'Asistentes y Técnicos',
		'Personal Administrativo'
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
		['nombre', 'show'],
		['propietario',  'normal']
	]

	def nombre
		"#{nombres} #{paterno} #{materno}"
	end

end
