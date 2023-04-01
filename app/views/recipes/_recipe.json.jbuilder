json.extract! recipe, :id, :created_at, :updated_at
json.url recipes_url(recipe, format: :json)

json.id recipe.name
json.id recipe.ingredients
json.id recipe.time

