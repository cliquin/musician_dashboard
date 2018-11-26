class CreateSetListSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :set_list_songs do |t|
      t.integer :song_id
      t.integer :set_list_id
      t.string :position

      t.timestamps
    end
  end
end
