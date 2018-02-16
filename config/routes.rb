Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'my_portifolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  root 'welcome#index'
end
