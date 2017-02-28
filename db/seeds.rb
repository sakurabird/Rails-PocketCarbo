require 'csv'

Type.delete_all
Kind.delete_all
Food.delete_all

csv_data = CSV.read('db/type.csv', headers: true)
csv_data.each do |data|
  Type.create!(data.to_hash)
end

csv_data = CSV.read('db/kind.csv', headers: true)
csv_data.each do |data|
  Kind.create!(data.to_hash)
end

csv_data = CSV.read('db/food.csv', headers: true)
csv_data.each do |data|
  Food.create!(data.to_hash)
end