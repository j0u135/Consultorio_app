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
    
    def edit
        @paciente = Paciente.find(params[:id])
    end
    
    def update
        @paciente = Paciente.find(params[:id])
        if @paciente.update(paciente_params)
            flash[:success] = "Se ha guardado correctamente la información."
            redirect_to paciente_path(@paciente)
        else
            flash[:error] = "Ha ocurrido un error al guardar los datos del paciente."
            redirect_to :edit
        end
    end
    
    private
        def paciente_params
            params.require(:paciente).permit(:nombre, :primer_ap, :segundo_ap, :email, :peso, :fecha_nac)
        end
    
end