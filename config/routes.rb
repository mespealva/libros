Rails.application.routes.draw do
  
  get 'cards/show'
  resources  :books
  resources  :shops,       only: [:index, :show]
  resources  :order_items
  resource   :cards,       only:[:show]

  devise_for :users

  root 'shops#index'

end
