class Appointment < ActiveRecord::Base
   
   belongs_to :calendario
   belongs_to :medico
   
   validates :fecha, presence: true
   validates :calendario_id, presence: true
    
end