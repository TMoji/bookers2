Rails.application.routes.draw do
  root to: 'homes#about'
  devise_for :users
  resources :books, only: [:new, :index, :show]
  get "/homes/about"=>"homes#about",as: "about"
end
