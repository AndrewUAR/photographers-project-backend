Rails.application.routes.draw do
  resources :comments
  resources :likes
  resources :picture_categories
  resources :album_pictures
  resources :pictures
  resources :categories
  resources :albums
  resources :photographers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
