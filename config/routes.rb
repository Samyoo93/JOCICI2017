Rails.application.routes.draw do
  resources :registers

  get "register/new" => "register#new"

  get 'more_about/index' => "more_about#index"

  get 'committee/index' =>"committee#index"

  get 'main_pages/index' =>"main_pages#index"
  resources :main_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'main_pages#index'
end
