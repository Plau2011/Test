Rails.application.routes.draw do
  root to: 'home#index'
  
  get 'buildings', to: 'buildings#index', as: 'edificios'
  get 'buildings/new', to: 'buildings#new', as: 'new_building'
  post 'buildings/new', to: 'buildings#create'
  get 'buildings/:id', to: 'buildings#show', as: 'building'

  get 'apartments', to: 'apartments#index', as: 'departamentos'
  get 'apartments/new', to: 'apartments#new', as: 'new_apartment'
  post 'apartments/new', to: 'apartments#create'
  get 'apartments/:id', to: 'apartments#show', as: 'apartment'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
