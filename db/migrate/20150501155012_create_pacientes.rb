class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombre, :primer_ap, :segundo_ap, :email, :peso
      t.date :fecha_nac
      t.timestamps
    end
  end
end
