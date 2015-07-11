Rails.application.routes.draw do
    
    root 'medicos#index'
    
    get '/medicos/:id/appointments', to: 'appointments#index'
  
    resources :medicos do
        
    end
    
    resources :pacientes
   
end
