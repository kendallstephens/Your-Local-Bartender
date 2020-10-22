class Cocktail < ApplicationRecord
    has_many :cocktail_recipes
    has_many :categories, through: :cocktail_recipes
end
