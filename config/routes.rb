Rails.application.routes.draw do
  # resources :brands, only: [:index, :show] do
  #   resources :products, only: [:index, :show]
  # end


  get 'orders/list'
  root 'menus#item'
  devise_for :employees
  devise_for :customers
  get 'employee/index'
  get 'customer/index'

  resources :menus, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'menus/new'
  get 'menus/edit'
  get 'menus/index'
  get 'menus/menu_deal'
  get 'menus/menu_item'
  resources :food_items, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'food_items/index'
  get 'food_items/new'
  get 'food_items/edit'
  resources :discounts, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'discounts/index'
  get 'discounts/new'
  get 'discounts/edit'
  resources :vouchers, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'vouchers/index'
  get 'vouchers/new'
  get 'vouchers/edit'
  resources :deals, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'deals/index'
  get 'deals/new'
  get 'deals/edit'
  resources :reviews, only: [:index]
  get 'reviews/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
