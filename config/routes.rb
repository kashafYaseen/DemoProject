Rails.application.routes.draw do
  get 'menu/index'
  get 'orders/index'
  resources :employees
  resources :customers
  resources :restaurants
  root 'restaurants#index'
  #root 'pages#index'
  get 'pages/login'
  get 'pages/register'
  get 'pages/password'
  get 'pages/layout-static'
  get 'pages/layout-sidenav-light'
  get 'pages/tables'
  get 'pages/charts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
