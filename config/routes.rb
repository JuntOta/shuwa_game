Rails.application.routes.draw do
  get 'shuwa/index'
  root to: "shuwa#index"
  resources :shuwa, only: :index
  resources :questions, only: [:index, :new, :create]
end
