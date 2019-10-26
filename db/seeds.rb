require "csv"

CSV.foreach('db/users.csv', headers: true) do |row|
  user = User.new(
    name:       row['name'],
    name_kana:  row['name_kana'],
    created_at: row['created_at'],
    updated_at: row['updated_at']
  )
  user.save!
end