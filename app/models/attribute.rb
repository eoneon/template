class Attribute < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Attribute.create! row.to_hash
    end
  end

  #figure out best way to either ignore exception OR only add unique via ||=
  validates_uniqueness_of :name
end
