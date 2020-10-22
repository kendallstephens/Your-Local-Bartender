class CocktailRecipe < ApplicationRecord
  belongs_to :category
  belongs_to :cocktail
end
