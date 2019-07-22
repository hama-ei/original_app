Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  } 
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  root 'images#index'

  resources :images 

  get "users/album", to: 'users#album_index', as: 'user_album_index'
  get "users/album/:id", to: 'users#album_show',  as: 'user_album_show'
  
end
