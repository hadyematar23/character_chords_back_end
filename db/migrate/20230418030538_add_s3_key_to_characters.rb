class AddS3KeyToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :s3key, :string
  end
end
