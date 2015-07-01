class Calendario < ActiveRecord::Base
    
    belongs_to :medico
    has_many :appointments
    
    validates :medico_id, presence: true
end