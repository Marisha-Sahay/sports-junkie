Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: 'pages#organization'
  get "/organization", to: 'pages#organization'
  get "/member/:id", to: 'pages#profile_show'
  get "/team/:id", to: 'pages#team_show'
  get "/myprofile/:id",to: 'pages#profile'
  patch "/myprofile/:id", to: 'pages#update'
end
