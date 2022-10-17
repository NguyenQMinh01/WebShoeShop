# frozen_string_literal: true

# == Route Map
#

Rails.application.routes.draw do
  

    use_doorkeeper
    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
    namespace :api do
      namespace :v1 do
        resources :profile,   only: [:index]
        resources :products,  only: [:index]
      end
    end
  
    resources :product,   only: %i[index show]
    resources :brands,    only: %i[index show]
    resources :category,  only: [:show]
    resources :search,    only: [:index]
  
    resource :cart, only: %i[destroy show] do
      resources :items, only: %i[destroy create]
    end
  
    root to: 'main#index'
  end