json.array!(@foods) do |food|
  json.extract! food, :id, :name, :carbohydrate_per_100g, :carbohydrate_per_weight, :weight, :calory, :protein, :fat, :sodium, :type_id, :kind_id
  json.url food_url(food, format: :json)
end
