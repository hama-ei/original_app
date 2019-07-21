class RenameGradeYearColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :grade_year, :grade_id
  end
end
