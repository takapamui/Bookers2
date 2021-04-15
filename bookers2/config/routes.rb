Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'homes/about'=> 'homes#about'
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :create, :edit, :update]
end
