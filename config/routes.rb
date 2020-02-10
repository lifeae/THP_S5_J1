Rails.application.routes.draw do
  get '/gossip/:id', to: 'dynamic#gossip'
  get '/author/:id', to: 'dynamic#author', as: 'author'
  get '/welcome', to: 'dynamic#welcome'
  get '/welcome/:id', to: 'dynamic#welcome'
  get '/contact', to: 'static#contact'
  get '/team', to: 'static#team'
end