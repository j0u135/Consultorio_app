class  AppointmentsController < ApplicationController

    def index
        @medico = Medico.find(params[:id])
        @appointments = @medico.appointments
    end
    
end