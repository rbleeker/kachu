# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Kachu::Application.routes.draw do


  # Resource routes for controller "categories"
  get 'categories(.:format)' => 'categories#index', :as => 'categories'
  get 'categories/:id/edit(.:format)' => 'categories#edit', :as => 'edit_category'
  get 'categories/:id(.:format)' => 'categories#show', :as => 'category', :constraints => { :id => %r([^/.?]+) }
  post 'categories(.:format)' => 'categories#create', :as => 'create_category'
  put 'categories/:id(.:format)' => 'categories#update', :as => 'update_category', :constraints => { :id => %r([^/.?]+) }
  delete 'categories/:id(.:format)' => 'categories#destroy', :as => 'destroy_category', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "ideas"
  get 'ideas/new(.:format)', :as => 'new_idea'
  get 'ideas/:id/edit(.:format)' => 'ideas#edit', :as => 'edit_idea'
  get 'ideas/:id(.:format)' => 'ideas#show', :as => 'idea', :constraints => { :id => %r([^/.?]+) }
  post 'ideas(.:format)' => 'ideas#create', :as => 'create_idea'
  put 'ideas/:id(.:format)' => 'ideas#update', :as => 'update_idea', :constraints => { :id => %r([^/.?]+) }
  delete 'ideas/:id(.:format)' => 'ideas#destroy', :as => 'destroy_idea', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "portfolios"
  get 'portfolios/new(.:format)', :as => 'new_portfolio'
  get 'portfolios/:id/edit(.:format)' => 'portfolios#edit', :as => 'edit_portfolio'
  get 'portfolios/:id(.:format)' => 'portfolios#show', :as => 'portfolio', :constraints => { :id => %r([^/.?]+) }
  post 'portfolios(.:format)' => 'portfolios#create', :as => 'create_portfolio'
  put 'portfolios/:id(.:format)' => 'portfolios#update', :as => 'update_portfolio', :constraints => { :id => %r([^/.?]+) }
  delete 'portfolios/:id(.:format)' => 'portfolios#destroy', :as => 'destroy_portfolio', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  post 'users/signup(.:format)' => 'users#do_signup', :as => 'do_user_signup'
  get 'users/signup(.:format)' => 'users#signup', :as => 'user_signup'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'

end
