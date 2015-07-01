class MedicosController < ApplicationController

    def index
        @medicos = Medico.all
    end
    
    def show
        @medico = Medico.find(params[:id])
    end
    
    def new
        @medico = Medico.new
    end
    
    def create
        @medico = Medico.new(medico_params)
        if @medico.save
            flash[:success] = "Se ha agregado correctamente el nuevo médico."
            redirect_to medicos_path
        else
            render :new
        end
    end
    
    def edit
        @medico = Medico.find(params[:id])
    end
    
    def update
        @medico = Medico.find(params[:id])
        if @medico.update(medico_params)
            flash[:success] = "Se guardo correctamente el registro."
            redirect_to medico_path(@medico)
        else
            render :edit
        end
    end
    
    private 
        def medico_params
            params.require(:medico).permit(:nombre, :primer_ap, :segundo_ap, :email)
        end

end