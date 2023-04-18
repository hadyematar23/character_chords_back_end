class CreateTheme < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.string :name
      t.string :title, default: "Oops, we forgot to title this"

      t.timestamps
    end
  end
end
