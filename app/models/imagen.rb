class Imagen < ApplicationRecord

	require 'carrierwave/orm/activerecord'

	TABLA_FIELDS = [
		['orden',      'normal'],
		['nota',       'normal'],
		['imagen',  'link_file']
	]

	mount_uploader :imagen, ImagenUploader

	belongs_to :linea, optional: true
	belongs_to :directorio, optional: true

	def d_nombre
		(self.nombre.blank? ? self.archivo.url.split('/').last : self.nombre)
	end

end
