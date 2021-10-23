Rails.application.routes.draw do

  root to: 'home#index'
  get '/departamentos', to: 'apartments#index'
  get '/departamentos/new', to: 'apartments#new', as: 'new_apartment'
  post 'departamentos/new', to: 'apartments#create'
  get '/departamentos/:id', to: 'apartments#show', as: 'apartment'
  
  get '/edificios', to: 'buildings#index'
  get '/edificios/new', to: 'buildings#new', as: 'new_building'
  post 'edificios/new', to:'buildings#create'
  get '/edificios/:id', to: 'buildings#show', as: 'building'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
