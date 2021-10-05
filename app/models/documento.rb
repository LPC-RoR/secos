class Documento < ApplicationRecord

	TABLA_FIELDS = [
		['documento',      'show'],
		['d_version', 'link_file']
	]

 	FORM_FIELDS = [
		['documento',        'entry'],
		['publico',      'check_box'],
		['directorio_id',   'hidden']
#		['proyecto_id',     'hidden'],
#		['etapa_id',        'hidden'],
#		['tabla_id',        'hidden']
	]

#	belongs_to :proyecto, optional: true
#	belongs_to :etapa, optional: true
#	belongs_to :tabla, optional: true

	belongs_to :directorio

	has_many :archivos

	def d_version
		self.archivos.empty? ? nil : self.archivos.order(created_at: :desc).first.archivo
	end
end
