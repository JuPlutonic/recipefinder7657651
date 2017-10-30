# == Route Map
#
#          Prefix Verb URI Pattern                Controller#Action
#   recipes_index GET  /recipes/index(.:format)   recipes#index
#            root GET  /                          recipes#index
#
# for root it is possible to get search in F2F (c) with ?looking_for=
#
#   greeter_hello GET  /greeter/hello(.:format)   greeter#hello
# greeter_goodbye GET  /greeter/goodbye(.:format) greeter#goodbye
#         contact GET  /contact(.:format)         recipes#contact
#           about GET  /about(.:format)           recipes#about
#

Rails.application.routes.draw do
  get 'recipes/index'
  root 'recipes#index'
  resources :recipes do
    member do
      patch :update_span
    end
  end
  get 'greeter/hello'
  get 'greeter/goodbye'
  get 'contact' => 'recipes#contact', as: :contact
  get 'about' => 'recipes#about', as: :about
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
