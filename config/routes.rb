Rails.application.routes.draw do
  
  root to: 'homes#about'
  devise_for :users
  resources :books, only: [:new,:create, :index, :show]
  resources :users, only: [:show, :edit]
  get "/homes/about"=>"homes#about",as: "about"
end
