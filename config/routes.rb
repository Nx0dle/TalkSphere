Rails.application.routes.draw do
  root "talksphere#index"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  post 'messages', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
