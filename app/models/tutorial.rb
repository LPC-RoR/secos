class Tutorial < ApplicationRecord

	TABLA_FIELDS = [
		['orden',      'normal'],
		['tutorial',     'show']
#		['archivo', 'link_file']
	]

	# -------------------- FORM  -----------------------
 	FORM_FIELDS = [
		['orden',          'entry'],
		['tutorial',       'entry'],
		['detalle',    'text_area'],
		['tema_ayuda_id', 'hidden']
	]


	belongs_to :tema_ayuda

	has_many :pasos

	validates :tutorial, :detalle, presence: true

	def d_detalle
	  self.detalle.blank? ? '' : self.detalle.gsub(/\n/, '<br>')
	end
end
