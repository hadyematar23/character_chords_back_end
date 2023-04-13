class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :genre
      t.string :character
      t.string :alignment
      t.text :songs, array: true, default: []

      t.timestamps
    end
  end
end
