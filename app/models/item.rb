class Item < ActiveRecord::Base
  has_many :descriptions
  has_many :elements, class_name: :Attribute, through: :descriptions
end
