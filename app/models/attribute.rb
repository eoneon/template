class Attribute < ActiveRecord::Base
  # require 'csv'

  has_many :descriptions
  has_many :items, through: :descriptions

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Attribute.create! row.to_hash
    end
  end
end
