Rails.application.routes.draw do
  root "chatroom#home"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # post 'message', to: 'messages#create'
  resources :messages, only: [:create]

  #mount ActionCable.server, at: '/cable'
end
