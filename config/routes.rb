Rails.application.routes.draw do
  # get 'lojas/new'
  # get 'lojas/index'
  # get 'lojas/show'
  devise_for :users
  resources :lojas
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
