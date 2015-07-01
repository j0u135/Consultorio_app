class Medico < ActiveRecord::Base

    has_many :consults
    has_many :pacientes, through: :consults
    has_one :calendario
    has_many :appointments, through: :calendario
    
    validates :nombre, presence: true, length: { minimum: 2, maximum: 50}
    validates :primer_ap, presence: true, length: { minimum: 2, maximum: 50}
    validates :segundo_ap, presence: true, length: { minimum: 2, maximum: 50}, allow_blank: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }

end