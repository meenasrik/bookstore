Rails.application.routes.draw do
  namespace :admin do
    get 'books/index'
    get 'books/show'
    get 'books/new'
  end
  get 'styleguide/index'
  root 'books#index'
  get 'authors/index'

  resources :books, only: [:index, :show]
  resources :sales, only: [:index, :show, :new]
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
