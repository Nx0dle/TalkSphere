Rails.application.routes.draw do
  root "talksphere#index"
  get 'login', to: 'session#new'
  get 'login', to: 'session#create'
end
