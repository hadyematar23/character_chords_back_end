class AddLimitToGenres < ActiveRecord::Migration[7.0]
  def change
    change_column :playlists, :genre, :string, limit: 36
  end
end
