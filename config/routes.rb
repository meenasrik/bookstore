require "sidekiq/web"

Rails.application.routes.draw do
  namespace :admin do
    mount Sidekiq::Web => "/sidekiq"
    resources :books
  end
  get 'styleguide/index'
  root 'books#index'
  get 'authors/index'

  resources :books, only: [:index, :show] do
    resources :sales, only: [:show, :new, :create]
  end
  resources :sales, only: [:index]
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
