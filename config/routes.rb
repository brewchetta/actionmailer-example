Rails.application.routes.draw do
  get 'passwords/create_token'
  get 'passwords/reset_password'
  resources :users

  get '/users/:id/validate', to: 'link_views#validate_email'

  get '/users/:id/reset_password', to: 'passwords#request_password_reset'
  get '/users/:id/reset_password/:password_reset_token', to: 'passwords#reset_password'
end
