Rails.application.routes.draw do
  devise_for :users
  get 'shuwa/index'
  root to: "shuwa#index"
  resources :shuwa, only: :index
  resources :questions, only: [:index, :new, :create, :edit, :update]
end
