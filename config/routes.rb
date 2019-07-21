Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  root 'images#index'

  resources :images 

  resources :users

  get "users/album_show/:id", to: 'users#album_show', as: 'user_album_show'

end
