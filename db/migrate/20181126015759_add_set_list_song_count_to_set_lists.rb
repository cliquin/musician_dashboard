class AddSetListSongCountToSetLists < ActiveRecord::Migration[5.1]
  def change
    add_column :set_lists, :set_list_songs_count, :integer
  end
end
