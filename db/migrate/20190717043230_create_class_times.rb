class CreateClassTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :class_times do |t|
      t.time :class_time, null:false
    end
  end
end
