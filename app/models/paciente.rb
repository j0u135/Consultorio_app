class Paciente < ActiveRecord::Base
    has_many :consults
    has_many :medicos, through: :consults
    has_one :historial
    
    validates :nombre, presence: true, length: { minimum:2, maximum: 50 }
    validates :primer_ap, presence: true, length: { minimum:2, maximum:50 }
    validates :segundo_ap, length: { minimum:2, maximum:50 }, allow_blank: true
    validates :fecha_nac, presence: true
    
end