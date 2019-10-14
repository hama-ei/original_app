# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string   :name,          null:false
      t.string   :name_kana,     null:false
      t.timestamps               null: false
    end
  end
end
