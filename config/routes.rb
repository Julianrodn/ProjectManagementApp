Rails.application.routes.draw do
  get 'tickets/show'
  get 'tickets/new'
  get 'tickets/edit'
  get 'tickets/create'
  get 'tickets/update'
  get 'tickets/destroy'
  # Otras rutas...

  # Rutas para los proyectos
  resources :projects do
    resources :stories do
      resources :tickets
    end
  end

  # Otras rutas...

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define la ruta raíz ("/")
  root 'home#index'
end

