class CalendarioController < ApplicationController

    def index
        @medico = Medico.find(params[:medico_id])
        @calendario = @medico.calendario
        @appointments = @calendario.appointments
    end
    
end