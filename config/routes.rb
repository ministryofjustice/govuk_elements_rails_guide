Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#home'

  get '/form_elements' => 'application#form_elements'

  resources :people


end
