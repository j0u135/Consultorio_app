class Indicacion < ActiveRecord::Base
    
    belongs_to :consult
    
    validates :consult_id, presence: true
    validates :indicacion, presence: true
    
end