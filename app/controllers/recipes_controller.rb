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

def update
  @recipe = Recipe.find_by(id: params[:id])
  @recipe.update(
    name: params[:name] || @recipe.name,
    ingredients: params[:ingredients] || @recipe.ingredients
  )
  render :show
end

def destroy 
  @recipe = Recipe.find_by(id: params[:id])
  @recipe.destroy
  render json: { message: "Recipe destroyed successfully" }
end 

end
