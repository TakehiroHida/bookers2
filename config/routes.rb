Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/home/about' => 'homes#about', as: 'about'
  resources :books, only: [:create, :show, :index, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  
end

