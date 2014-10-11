Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :print_settings, only: [:edit, :update]
    get 'print_settings', to: 'print_settings#edit'
  end
end
