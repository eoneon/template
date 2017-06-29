class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :kind
      t.string :name

      t.timestamps null: false
    end
  end
end
