class TemaAyuda < ApplicationRecord

	require 'carrierwave/orm/activerecord'

	TIPO = ['portada', 'inicio', 'mensaje', 'foot']

	has_many :tutoriales

#	validates :orden, numericality: { only_integer: true }

	mount_uploader :ilustracion, IlustracionUploader

	def d_detalle
	  self.detalle.blank? ? '' : self.detalle.gsub(/\n/, '<br>')
#	  self.detalle.blank? ? '' : simple_format(self.detalle)
	end

	def label
		if ['portada', 'foot'].include?(self.tipo)
			self.tipo
		elsif ['inicio', 'tema', 'admin'].include?(self.tipo)
			"#{self.orden} : #{self.tema_ayuda}"
		else
			self.tema_ayuda
		end
	end
end
