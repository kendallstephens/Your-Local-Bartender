class CocktailRecipesController < ApplicationController
    def index 
        cocktail_recipes = CocktailRecipe.all 
        render json: cocktail_recipes
    end

    def create 
        cocktail = Cocktail.find_or_create_by(name: params[:cocktail_name])
        cocktail_recipe = CocktailRecipe.find_or_create_by(name: params[:name], image_url: params[:image_url], ingredients: params[:ingredients], preperation: params[:preperation], category_id: params[:category_id], likes: params[:likes], cocktail_id: cocktail.id)
        render json: cocktail_recipe
    end

    def update
        cocktail_recipe = CocktailRecipe.find(params[:id])
        cocktail_recipe.update(likes: params[:likes])
        render json: cocktail_recipe
    end

    def destroy 
        cocktail_recipe = CocktailRecipe.find(params[:id])
        cocktail_recipe.destroy
        render json: {message: 'Recipe deleted'}
    end

end
