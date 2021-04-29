Rails.application.routes.draw do
  root to: 'home#show'

  get 'users/new', to: 'users#new'
end
