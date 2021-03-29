Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'home#index'
  get 'search', to: 'products#search'
  resources :products do
    resources :reviews
  end
end
  