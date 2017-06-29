class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.references :item, index: true, foreign_key: true
      t.references :attribute, index: true, foreign_key: true
      t.string :kind

      t.timestamps null: false
    end
  end
end
