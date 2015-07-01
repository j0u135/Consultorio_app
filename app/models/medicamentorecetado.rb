class Medicamentorecetado < ActiveRecord::Base
    
    belongs_to :consult
    
    validates :medicamento, presence: true
    validates :dosis, presence: true
    validates :consult_id, presence: true
    
end