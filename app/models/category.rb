class Category < ApplicationRecord
    has_many :cocktail_recipes
    has_many :cocktails, through: :cocktail_recipes
end
