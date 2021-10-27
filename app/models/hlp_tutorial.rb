class HlpTutorial < ApplicationRecord

	TABLA_FIELDS = [
		['tutorial', 'show'],
		['clave',    'normal']
	]

	# -------------------- FORM  -----------------------
 	FORM_FIELDS = [
		['tutorial',       'entry'],
		['detalle',    'text_area']
	]


	has_many :hlp_pasos

	validates :tutorial, :detalle, presence: true

end
