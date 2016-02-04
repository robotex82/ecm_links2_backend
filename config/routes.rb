Ecm::Links::Backend::Engine.routes.draw do
  resources :categories
  resources :links

  root to: 'home#index'
end
