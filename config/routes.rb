Rails.application.routes.draw do
  # Rutas generadas por Devise para la autenticación de usuarios
  devise_for :users, controllers: {
    sessions: 'users/sessions' # Especifica el controlador personalizado para las sesiones de usuario
  }
  # Rutas para los proyectos y sus recursos anidados
  resources :projects do
    resources :stories do
      resources :tickets
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

  # Redirigir a los usuarios después del inicio de sesión a la ruta '/projects'
  root to: 'projects#index', as: :authenticated_root

  # Define la ruta raíz ("/") para usuarios no autenticados
  root to: 'devise/sessions#new', as: :unauthenticated_root
end

