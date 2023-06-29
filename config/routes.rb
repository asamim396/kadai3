Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about' , as: 'about'
  post 'books' => 'books#create'
  resources :books, only: [:show, :edit, :index, :new, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
