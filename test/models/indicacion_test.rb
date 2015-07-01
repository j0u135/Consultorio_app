require 'test_helper'

class IndicacionTest < ActiveSupport::TestCase
    
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
        @indicacion = @consult.indicacions.build( indicacion: 'Alguna indicacion' )
        @indicacion.save
    end
    
    test 'indicacion debe ser valido' do
        assert @indicacion.valid?
    end
    
    test 'consult_id debe estar presente' do
        @indicacion.consult_id = ''
        assert_not @indicacion.valid?
    end
    
    test 'indicacion debe estar presente' do
        @indicacion.indicacion = ''
        assert_not @indicacion.valid?
    end
    
end