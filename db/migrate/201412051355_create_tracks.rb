class CreateTracks < ActiveRecord::Migration

  def change
    create_table :tracks do |t|
      t.string :name
      t.string :album_name
      t.string :link
      t.integer :artist_id

      t.timestamps
    end

end
