class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string      :image,         null:false
      t.integer   :user_id,       null:false
      t.integer      :date_year,          null:false
      t.integer      :date_month,          null:false
      t.integer      :date_day,          null:false
      t.text       :body
      t.timestamps
    end
  end
end