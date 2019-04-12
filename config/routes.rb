Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  # get '/test', to: 'users#test'
  #show
  get '/chatrooms', to: 'chatrooms#index'
  get 'chatrooms/:id', to: 'chatrooms#show', as: :chatroom
  post '/chatrooms', to: 'chatrooms#create'
  delete '/chatrooms', to: 'chatrooms#destroy'

  # resources :chatroom, :user, :message
end
