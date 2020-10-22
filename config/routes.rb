Rails.application.routes.draw do
  resources :cocktails
  resources :categories
  resources :cocktail_recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
