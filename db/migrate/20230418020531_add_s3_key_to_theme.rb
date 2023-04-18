class AddS3KeyToTheme < ActiveRecord::Migration[7.0]
  def change
    add_column :themes, :s3_key, :string
  end
end
