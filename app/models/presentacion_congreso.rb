class PresentacionCongreso < ApplicationRecord

	TIPOS = [
		'Conferencia',
		'Seminario',
		'Mesa Redonda',
		'Taller',
		'Comunicación Oral',
		'Poster',
		'Otro'
	]

	ORGANIZACIONES = [
		'Invitado',
		'Inscrito',
		'Organizador',
		'Participa'
	]

	TABLA_FIELDS = [
		['nombre_presentacion', 'normal']
	]

	has_many :pc_is
	has_many :investigadores, through: :pc_is

end
