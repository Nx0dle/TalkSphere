Rails.application.routes.draw do
  get 'messages/create'
  root "talksphere#index"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  post 'messages', to: 'messages#create'
end
