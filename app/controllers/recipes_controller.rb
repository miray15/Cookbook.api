class RecipesController < ApplicationController

def index 
  @recipes = Recipe.all 
  render :index 
end 

def create
  @recipe = Recipe.create(
  name: params[:name],
  ingredients: params[:ingredients],
  )
  render :show 
end 

end
