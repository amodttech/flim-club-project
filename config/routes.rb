Rails.application.routes.draw do
  resources :users
  resources :film_lists
  resources :films
  resources :groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
