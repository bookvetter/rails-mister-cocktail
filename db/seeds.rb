# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# json = ActiveSupport::JSON.decode(File.read('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'))

# json.each do |a|
#   Ingredient.create!(a['ingredient'], without_protection: true)
# end
# require 'json'
#   require 'open-uri'

#  ingredients = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
#   ingredients_hash = JSON.parse(ingredients)



#     ingredients_hash.each do |a|
#   Ingredient.create!(a['name'], without_protection: true)
#   end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "chocolate")
Ingredient.create(name: "mustard")
Ingredient.create(name: "pickles")
Ingredient.create(name: "soy")
Ingredient.create(name: "peanut")
Ingredient.create(name: "onion")
