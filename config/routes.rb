Rails.application.routes.draw do
  namespace :api do
  	mount_devise_token_auth_for 'User', at: 'auth'
  	get 'users/current' => 'users#current'
  	patch 'users/update' => 'users#update'

  	get 'bookmarks' => 'bookmarks#index'
  	post 'bookmarks/add' => 'bookmarks#add'

  	post 'ratings/add' => 'ratings#add'
  end
end
