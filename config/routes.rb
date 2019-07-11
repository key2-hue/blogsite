Rails.application.routes.draw do
  root "diary#index"
  delete "diary/:id" => "diary#destroy"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users 
  resources :diary
  resources :profile
end
