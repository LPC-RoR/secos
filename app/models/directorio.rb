class Directorio < ApplicationRecord

	TABLA_FIELDS = [
		['directorio', 'show'], 
	]

#	belongs_to :proyecto, optional: true

	has_many :documentos

	has_many :archivos
	has_many :imagenes

	has_one  :parent_relation, :foreign_key => "child_id", :class_name => "Sub"
	has_many :child_relations, :foreign_key => "parent_id", :class_name => "Sub"

	has_one  :parent, :through => :parent_relation
	has_many :children, :through => :child_relations, :source => :child

	def padres_ids
		ids = []
		objeto = self
		while objeto.present? do
			ids << objeto.parent.id unless objeto.parent.blank?
			objeto = objeto.parent	
		end
		ids.reverse
	end
end
