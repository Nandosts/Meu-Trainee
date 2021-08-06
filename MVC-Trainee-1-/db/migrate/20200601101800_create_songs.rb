class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.references :explicity, foreign_key: true
      t.references :gender, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
