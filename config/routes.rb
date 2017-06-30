Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api do
  	get 'users/current' => 'users#current'
  	patch 'users/update' => 'users#update'
  end
end
