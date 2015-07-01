require "test_helper"

class ConsultTest < ActiveSupport::TestCase
    
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
    end
    
    test 'consult debe ser valido' do
        assert @consult.valid?
    end
    
    test 'fecha debe estar presente' do
        @consult.fecha = ''
        assert_not @consult.valid?
    end
    
    test 'medico_id debe estar presente' do
        @consult.medico_id = ''
        assert_not @consult.valid?
    end
    
    test 'tipo_id debe estar presente' do
        @consult.tipo_id = ''
        assert_not @consult.valid?
    end
    
    test 'paciente_id debe estar presente' do
        @consult.paciente_id = ''
        assert_not @consult.valid?
    end
    
end
