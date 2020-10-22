class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories, include: [:cocktails, :cocktail_recipes]
    end

   
end
