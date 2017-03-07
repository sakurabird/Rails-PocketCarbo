Rails.application.routes.draw do
  get 'static_pages/home'

  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'foods#index'
end
