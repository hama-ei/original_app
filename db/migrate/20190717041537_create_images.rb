class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text      :image,         null:false
      t.integer   :user_id,       null:false
      t.integer   :grade_id,      null:false
      t.integer   :class_day_id,  nlll:false
      t.integer   :class_time_id, null:false
      t.date      :date,          null:false
      t.timestamps
    end
  end
end