# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string   :name,          null:false
      t.string   :name_kana,     null:false
      t.string   :password,      null: false, default: ""
      t.integer  :grade_year,    null:false
      t.integer  :class_day_id,  null:false
      t.integer  :class_time_id, null:false
      t.string   :email,         null: false, default: ""
      t.text     :telephone,     null:false
      t.text     :zip_code,      null:false
      t.string   :address,       null:false
      t.text     :introduction
      t.integer  :birth_month,   null:false
      t.integer  :birth_day,     null:false
      t.timestamps               null: false
    end
  end
end
