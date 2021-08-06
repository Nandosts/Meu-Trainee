class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :artist

      t.timestamps
    end
  end
end
