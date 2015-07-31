Rails.application.routes.draw do
    
    root 'medicos#index'
    
    resources :medicos do
        resources :calendario, only: [:index] do
            resources :appointments, only: [:index, :new, :create ]
        end
    end
    
    resources :pacientes do
    	collection do
    		get 'search'
    	end
    end
   
end
