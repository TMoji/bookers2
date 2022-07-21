Rails.application.routes.draw do
  
  root to: 'homes#about'
  devise_for :users
  resources :books, only: [:new,:create, :index, :show, :destroy]
  resources :users, only: [:index, :edit, :update]
  get "/homes/about"=>"homes#about",as: "about"
end
