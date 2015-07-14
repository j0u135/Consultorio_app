class  AppointmentsController < ApplicationController

    def new
        @medico = Medico.find(params[:medico_id])
        @calendario = @medico.calendario
        @appointment = @calendario.appointments.new
    end
    
    def create
        @medico = Medico.find(params[:medico_id])
        @calendario = @medico.calendario
        @appointment = @calendario.appointments.new(appointment_params)
        begin
            if @appointment.save
                redirect_to medico_calendario_path(@medico, @calendario)
            else
                render :new
            end
        rescue => e
            flash[:error] = "Hubo un problema Ups ..."
            render :new
        end
    end
    
    private 
        def appointment_params
            params.require(:appointment).permit(:fecha, :hora)
        end
    
end