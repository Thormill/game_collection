Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  get 'home/notice_show'

  resource :collections, only: [:index]
  # get '/collections', to: 'collections#index', as: :collectons
  # get '/collections/:id', to: 'collections#show', as: :collection
  # get '/patients/:id/edit', to: 'patients#edit'
  # patch '/patients/:id', to: 'patients#update'
  # get '/patients/new', to: 'patients#new', as: :new_collection
  # post '/patients/create', to: 'patients#create'
  # delete '/patients/:id', to: 'patients#destroy'

  get '/games/:id/favor', to: 'home#favorite', as: :favor_game # favor_game_path


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
