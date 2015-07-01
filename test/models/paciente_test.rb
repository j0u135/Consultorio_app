require 'test_helper'

class PacienteTest < ActiveSupport::TestCase
    
    def setup
        @paciente = Paciente.create(
            nombre: 'Julio Cesar',
            primer_ap: 'Sanchez',
            segundo_ap: 'Salinas',
            email: 'julio@gmail.com',
            peso: 75,
            fecha_nac: '1980-09-16'
        )
    end
    
    test 'paciente debe ser valido' do
        assert @paciente.valid?
    end 
    
    test 'nombre debe ser mayor a 2 caracteres' do
        @paciente.nombre = 'a'
        assert_not @paciente.valid?
    end
    
    test 'nombre debe ser menor a 50 caracteres' do
        @paciente.nombre = 'a' * 52
        assert_not @paciente.valid?
    end
    
    test 'primer_ap debe estar presente' do
        @paciente.primer_ap = ''
        assert_not @paciente.valid?
    end
    
    test 'primer_ap debe ser mayor o igual 2 caracteres' do
        @paciente.primer_ap = 'a'
        assert_not @paciente.valid?
    end
    
    test 'primer_ap debe ser menor a 50 caracteres' do
        @paciente.primer_ap = 'a' * 52
        assert_not @paciente.valid?
    end

    test 'segundo_ap debe ser mayor o igual 2 caracteres' do
        @paciente.segundo_ap = 'a'
        assert_not @paciente.valid?
    end
    
    test 'segundo_ap debe ser menor a 50 caracteres' do
        @paciente.segundo_ap = 'a' * 52
        assert_not @paciente.valid?
    end
    
    test 'fecha_nac debe estar presente' do
        @paciente.fecha_nac = ''
        assert_not @paciente.valid?
    end

    
end