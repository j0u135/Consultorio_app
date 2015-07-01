require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
    
    def setup
        @medico = Medico.create( 
            nombre: 'Miguel',
            primer_ap: 'Sanchez',
            segundo_ap: 'Garcia',
            email: 'miguel2@gmail.com'
        )
        @calendario = @medico.build_calendario()
        @calendario.save
        @appointment = @calendario.appointments.build(fecha: '2015-07-01', hora: '12:00:00')
    end
    
    test 'appointment debe ser valido' do
        assert @appointment.valid?
    end
    
    test 'fecha debe estar presente' do
        @appointment.fecha = ''
        assert_not @appointment.valid?
    end
    
    test 'calendario_id debe estar presente' do
        @appointment.calendario_id = nil
        assert_not @appointment.valid?
    end
    
end