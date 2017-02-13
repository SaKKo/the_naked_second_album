Rails.application.routes.draw do

  root to: 'users#show'

  devise_for :users

  resources :albums do
    resources :images
  end

  get '/users/profile', to: 'users#show', as: 'user_profile'
  get '/users/edit_profile', to: 'users#edit', as: 'edit_user_profile'
  match '/users/update_profile', to: 'users#update', as: 'update_user_profile', via: [:put,:patch]

  # resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
