Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, only: [:create, :destroy]
  get 'my_portifolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  root 'welcome#index'
end
