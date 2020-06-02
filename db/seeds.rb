require 'rest-client'
require 'json'
require 'byebug'

Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all

recipe_key = Rails.application.credentials.spoontacular[:api_key]
response = RestClient.get("https://api.spoonacular.com/recipes/random?number=10&apiKey=#{recipe_key}")
recipes = JSON.parse(response)

recipe_array = recipes['recipes']

recipe_array.each do |recipe|

  title = recipe['title']
  cook_time = recipe['readyInMinutes']
  instructions = recipe['instructions']
  picture = recipe['image']
  health_score = recipe['healthScore']
  gluten_free = recipe['glutenFree']
  vegetarian = recipe['vegetarian']
  vegan = recipe['vegan']
  dairy_free = recipe['dairyFree']

  Recipe.create(title: title, cook_time: cook_time, instructions: instructions, picture: picture, health_score: health_score, gluten_free: gluten_free, vegetarian: vegetarian, vegan: vegan, dairy_free: dairy_free)
end





chicken = Ingredient.find_or_create_by(name:"Chicken")
garlic = Ingredient.find_or_create_by(name:"Garlic")
sugar = Ingredient.find_or_create_by(name:"Sugar")

apflour = Ingredient.find_or_create_by(name:"All purpose flour")
milk = Ingredient.find_or_create_by(name:"Whole Milk")
egg = Ingredient.find_or_create_by(name:"Egg")
salt = Ingredient.find_or_create_by(name:"Kosher Salt")
cinnamon = Ingredient.find_or_create_by(name:"Ground Cinnamon")
