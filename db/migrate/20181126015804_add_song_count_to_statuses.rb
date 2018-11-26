class AddSongCountToStatuses < ActiveRecord::Migration[5.1]
  def change
    add_column :statuses, :songs_count, :integer
  end
end
