class Description < ActiveRecord::Base
  belongs_to :item
  belongs_to :elements, class_name: :Attribute
end
