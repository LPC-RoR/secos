class Documento < ApplicationRecord

	TABLA_FIELDS = [
		['documento',      'show'],
		['d_version', 'link_file']
	]

#	belongs_to :proyecto, optional: true
#	belongs_to :etapa, optional: true
#	belongs_to :tabla, optional: true

	belongs_to :directorio

	has_many :archivos

	def d_version
		self.archivos.empty? ? nil : self.archivos.order(created_at: :desc).first.archivo
	end

	def d_nombre
		self.documento
	end
end
