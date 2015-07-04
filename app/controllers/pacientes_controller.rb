class PacientesController < ApplicationController
    
    def index
        @pacientes = Paciente.all
    end
    
    def show
        @paciente = Paciente.find(params[:id])
    end
    
    def new
        @paciente = Paciente.new
    end
    
    def create
        @paciente = Paciente.new(paciente_params)
        if @paciente.save
            flash[:success] = "Se ha agregado correctamente el Nuevo Paciente."
            redirect_to pacientes_path
        else
            flash[:error] = "Ha ocurrido un error al agregar al Paciente."
            render :new
        end
    end
    
    
    
    private
        def paciente_params
            params.require(:paciente).permit(:nombre, :primer_ap, :segundo_ap, :email, :peso, :fecha_nac)
        end
    
end