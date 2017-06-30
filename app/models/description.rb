class Description < ActiveRecord::Base
  belongs_to :item
  belongs_to :element, class_name: :Attribute
end
