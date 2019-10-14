Rails.application.routes.draw do

  root 'homes#index'
  
  resources :images 
  resources :managements
  resources :schedules, only:[:index]
  resources :comments
  resources :users
  
  get "users/album/:id", to: 'users#album_show',  as: 'user_album_show'
  
end
