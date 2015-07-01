require 'test_helper'

class CalendarioTest < ActiveSupport::TestCase
   
    def setup
        @medico = Medico.create( 
            nombre: 'Miguel',
            primer_ap: 'Sanchez',
            segundo_ap: 'Garcia',
            email: 'miguel@gmail.com'
        )
        @calendario = @medico.build_calendario()
    end
    
    test 'calendario debe ser valido' do
        assert @calendario.valid?
    end
    
    test "medico_id debe estar presente" do
        @calendario.medico_id = nil
        assert_not @calendario.valid?
    end
    
end