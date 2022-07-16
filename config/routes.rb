Rails.application.routes.draw do
  root to: 'homes#about'
  devise_for :users
  get "/homes/about"=>"homes#about",as: "about"
end
