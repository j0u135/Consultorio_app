require 'test_helper'

class MedicamentorecetadTest < ActiveSupport::TestCase
    
    def setup
        @paciente = Paciente.create(
            nombre: 'Julio Cesar',
            primer_ap: 'Sanchez',
            segundo_ap: 'Salinas',
            email: 'julio@gmail.com',
            peso: 75,
            fecha_nac: '1980-09-16'
        )
        @medico = Medico.create( 
            nombre: 'Miguel',
            primer_ap: 'Sanchez',
            segundo_ap: 'Garcia',
            email: 'miguel@gmail.com'
        )
        @consult = @paciente.consults.build( fecha: '2015-07-01', medico_id: @medico.id, tipo_id: 0, estatus_id: 0 )
        @consult.save
        @medicamentorecetado = @consult.medicamentorecetados.build( medicamento: 'Alguna Medicamento', dosis: 'Dos veces al dia' )
        @medicamentorecetado.save
    end
    
    test 'medicamentorecetado debe ser valido' do
        assert @medicamentorecetado.valid?
    end
    
    test 'consult_id debe estar presente' do
        @medicamentorecetado.consult_id = ''
        assert_not @medicamentorecetado.valid?
    end
    
    test 'medicamento debe estar presente' do
        @medicamentorecetado.medicamento = ''
        assert_not @medicamentorecetado.valid?
    end
    
    test 'dosis debe estar presente' do
        @medicamentorecetado.dosis = ''
        assert_not @medicamentorecetado.valid?
    end
    
end