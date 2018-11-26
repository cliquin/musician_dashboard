class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :user_id
      t.integer :status_id

      t.timestamps
    end
  end
end
