Rails.application.routes.draw do
    
    root 'medicos#index'
  
    #Medicos
    resources :medicos
   
end
