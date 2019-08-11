class CreateInfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :infomations do |t|
      t.string   :date,  null:false
      t.string   :title,  null:false
      t.text     :body,  null:false
      t.timestamps
    end
  end
end
