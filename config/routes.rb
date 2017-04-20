Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: 'pages#home'
  get "/organization", to: 'pages#organization'
  get "/sport/:id", to: 'pages#sport_show'
  get "/profile/:id",to: 'pages#profile'
  patch "/profile/:id", to: 'pages#update'
end
