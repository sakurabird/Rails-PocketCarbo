Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/privacy_policy'

  match 'foods/index', to: 'foods#index', via: ['post', 'get']
  match 'foods/search', to: 'foods#search', via: ['post', 'get']
  match 'foods/search_t', to: 'foods#search_by_type', via: ['post', 'get']

  resources :foods do
    get 'page/:page', :action => :index, :on => :collection
  end

  get '*not_found', controller: 'application', action: 'render_404'
  post '*not_found', controller: 'application', action: 'render_404'
end
