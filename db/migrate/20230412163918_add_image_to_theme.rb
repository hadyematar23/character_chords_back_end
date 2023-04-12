class AddImageToTheme < ActiveRecord::Migration[7.0]
  def change
    add_column :themes, :image_link, :string
  end
end
