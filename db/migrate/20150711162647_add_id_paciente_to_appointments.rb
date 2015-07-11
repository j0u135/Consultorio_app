class AddIdPacienteToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :paciente_id, :integer
  end
end
