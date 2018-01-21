require 'csv'

Food.delete_all
Kind.delete_all
Type.delete_all

csv_data = CSV.read('db/type.csv', headers: true,
  external_encoding: "Shift_JIS",
  internal_encoding: "utf-8")

csv_data.each do |data|
  Type.create!(data.to_hash)
end

csv_data = CSV.read('db/kind.csv', headers: true,
    external_encoding: "Shift_JIS",
    internal_encoding: "utf-8")
csv_data.each do |data|
  Kind.create!(data.to_hash)
end

csv_data = CSV.read('db/food.csv', headers: true,
    external_encoding: "Shift_JIS",
    internal_encoding: "utf-8")
csv_data.each do |data|
  Food.create!(data.to_hash)
end
