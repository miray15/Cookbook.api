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

def show 
  @recipe = Recipe.find_by(id: params[:id])
  render :show 
end 

end
