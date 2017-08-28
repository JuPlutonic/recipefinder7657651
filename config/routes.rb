Rails.application.routes.draw do
  get 'recipes/index'
  root 'recipes#index'
  get 'greeter/hello'
  get 'greeter/goodbye'
  get 'contact' => 'recipes#contact', as: :contact
  get 'about' => 'recipes#about', as: :about
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
