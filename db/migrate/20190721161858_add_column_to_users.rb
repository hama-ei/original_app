class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :class_name, :string
  end

  def down
    remove_column :users, :class_day_id, :integer
    remove_column :users, :class_time_id, :integer
  end

end