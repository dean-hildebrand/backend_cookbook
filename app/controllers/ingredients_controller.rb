class IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all
    render json: ingredients.to_json(
      {:except => [:created_at, :updated_at]}
    )

    
  end
end
