Rails.application.routes.draw do

  root to: "home#index"
  get '/crypto', to: 'home#crypto'
  get '/resul', to: 'home#resul'
  get '/movie', to: 'home#movie'


  get '/search', to: 'movies#search'

  get '/pequenotest', to: 'application#pequenotest'
end
