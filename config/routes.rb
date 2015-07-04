Rails.application.routes.draw do
    
    root 'medicos#index'
  
    resources :medicos
    resources :pacientes
   
end
