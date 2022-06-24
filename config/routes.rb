Rails.application.routes.draw do
  root "chatroom#home"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :messages, only: [:create]
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  #mount ActionCable.server, at: '/cable'
end
