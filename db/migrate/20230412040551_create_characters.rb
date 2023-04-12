class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.float :good_min
      t.float :good_max
      t.float :lawful_min
      t.float :lawful_max
      t.string :description
      t.references :theme, null: false, foreign_key: true
      t.string :url
      t.integer :alignment, default: 1


      t.timestamps
    end
  end
end
