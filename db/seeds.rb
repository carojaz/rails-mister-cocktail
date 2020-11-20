# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

# Cocktail.destroy_all
Ingredient.destroy_all


list_hash = JSON.load(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"))
list_array = list_hash['drinks']
list_array.sort
puts list_array[0]["strIngredient1"]
list_array.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
puts Ingredient.count
puts Ingredient.last
