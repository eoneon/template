class Item < ActiveRecord::Base
  has_many :descriptions
  has_many :elements, class_name: :Attribute, through: :descriptions

  accepts_nested_attributes_for :elements, reject_if: proc { |attributes| attributes['attribute_id'].blank? }
end
