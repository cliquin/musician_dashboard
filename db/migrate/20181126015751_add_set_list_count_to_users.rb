class AddSetListCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :set_lists_count, :integer
  end
end
