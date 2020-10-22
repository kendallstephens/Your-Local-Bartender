class CreateCocktailRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktail_recipes do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :cocktail, null: false, foreign_key: true
      t.string :name
      t.string :image_url
      t.string :ingredients
      t.string  :preperation
      t.integer :likes

      t.timestamps
    end
  end
end
