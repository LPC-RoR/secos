class Archivo < ApplicationRecord

	require 'carrierwave/orm/activerecord'

	TABLA_FIELDS = [
		['archivo', 'link_file'],
		['d_fecha',   'diahora']
	]

	mount_uploader :archivo, ArchivoUploader

#	belongs_to :linea, optional: true
	belongs_to :directorio, optional: true
	belongs_to :documento, optional: true

	def d_fecha
		self.created_at
	end

	def d_nombre
		(self.nombre.blank? ? (self.documento.present? ? self.documento.documento : self.archivo.url.split('/').last) : self.nombre)
	end

end
