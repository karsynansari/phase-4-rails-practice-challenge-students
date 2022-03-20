Rails.application.routes.draw do
  resources :students, only: [:create, :update, :index, :destroy, :show]
  resources :instructors, only: [:create, :update, :index, :destroy, :show]
end
