class Sub < ApplicationRecord
  belongs_to :parent, :class_name => "Directorio", :inverse_of => :parent_relation
  belongs_to :child, :class_name => "Directorio", :inverse_of => :child_relations
end
