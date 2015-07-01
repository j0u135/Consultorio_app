require 'test_helper'

class MedicoTest < ActiveSupport::TestCase
    
    def setup
        @medico = Medico.new
        @medico.nombre = 'Miguel'
        @medico.primer_ap = 'Sanchez'
        @medico.segundo_ap = ''
        @medico.email = 'miguel@gmail.com'
    end
    
    test 'medico es valido' do
        assert @medico.valid?
    end
    
    test 'nombre debe estar presente' do
        @medico.nombre = ''
        assert_not @medico.valid?
    end
    
    test 'primer_ap debe estar presente' do
        @medico.primer_ap = ''
        assert_not @medico.valid?
    end
    
    test 'nombre debe ser mayor a 2 caracteres' do
        @medico.nombre = 'a'
        assert_not @medico.valid?
    end
    
    test 'nombre debe ser menor a 50 caracteres' do
        @medico.nombre = 'a' * 52
        assert_not @medico.valid?
    end
    
    test 'primer_ap debe ser mayor a 2 caracteres' do
        @medico.primer_ap = 'a'
        assert_not @medico.valid?
    end
    
    test 'primer_ap debe ser menor a 50 caracteres' do
        @medico.primer_ap = 'a' * 52
        assert_not @medico.valid?
    end
    
    test 'segundo_ap debe ser mayor o igual a 2 caracteres' do
        @medico.segundo_ap = 'a'
        assert_not @medico.valid?
    end
    
    test 'segundo_ap debe ser menor a 50 caracteres' do
        @medico.segundo_ap = 'a' * 52
        assert_not @medico.valid?
    end
    
   test 'email debe estar presente' do
        @medico.email = ''
        assert_not @medico.valid?
    end
    
    test "email debe ser unico" do
        medico_duplicado = @medico.dup
        medico_duplicado.email =  @medico.email.upcase
        @medico.save
        assert_not medico_duplicado.valid?
    end
    
end