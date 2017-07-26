Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :countries do
      resources :states
    end
    resources :states
  end
end
