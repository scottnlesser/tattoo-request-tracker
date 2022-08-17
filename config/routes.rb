Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :requests, only: [:index,:show,:new]
  namespace :api do
    namespace :v1 do
      resources :requests, only: [:create] 
    end
  end
end
