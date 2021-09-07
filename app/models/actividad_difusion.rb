class ActividadDifusion < ApplicationRecord

	ORGANIZACIONES = [
		'Organizador',
		'Participa'
	]

	TABLA_FIELDS = [
		['titulo_evento', 'normal'], 
	]

	has_many :ad_pos
	has_many :publico_objetivos, through: :ad_pos

	has_many :ad_is
	has_many :investigadores, through: :ad_is

end
