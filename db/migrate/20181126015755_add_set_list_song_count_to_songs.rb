class AddSetListSongCountToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :set_list_songs_count, :integer
  end
end
