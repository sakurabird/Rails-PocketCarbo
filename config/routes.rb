Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/privacy_policy'

  match 'foods/index', to: 'foods#index', via: ['post', 'get']

  resources :foods do
    get 'page/:page', :action => :index, :on => :collection
  end
end
