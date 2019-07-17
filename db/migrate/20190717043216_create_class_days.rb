class CreateClassDays < ActiveRecord::Migration[5.2]
  def change
    create_table :create_class_days do |t|
      t.string :class_day, null:false
    end
  end
end
