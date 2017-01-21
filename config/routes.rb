Ecm::Links::Backend::Engine.routes.draw do
  backend_resources :categories
  backend_resources :links

  root to: 'home#index'
end
