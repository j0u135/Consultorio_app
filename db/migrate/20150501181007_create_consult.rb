class CreateConsult < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.date :fecha
      t.text :sintomas, :indicaciones
      t.integer :paciente_id, :medico_id, :tipo_id, :estatus_id
      t.timestamps
    end
  end
end
