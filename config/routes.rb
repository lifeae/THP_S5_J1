Rails.application.routes.draw do
  get '/welcome', to: 'dynamic#welcome'
  get '/welcome/:id', to: 'dynamic#welcome'
  get '/contact', to: 'static#contact'
  get '/team', to: 'static#team'
end