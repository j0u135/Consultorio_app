class Consult < ActiveRecord::Base
    belongs_to :paciente
    belongs_to :medico
    has_many :indicacions
    has_many :medicamentorecetados
    
    validates :fecha, presence: true
    validates :medico_id , presence: true
    validates :paciente_id, presence: true
    validates :tipo_id, presence: true
    
end