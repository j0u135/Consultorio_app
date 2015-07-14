Rails.application.routes.draw do
    
    root 'medicos#index'
    
    resources :medicos do
        resources :calendario, only: [:index] do
            resources :appointments, only: [:new]
        end
    end
    
    resources :pacientes
   
end
