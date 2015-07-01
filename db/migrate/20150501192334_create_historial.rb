class CreateHistorial < ActiveRecord::Migration
  def change
    create_table :historials do |t|
      t.integer :paciente_id
      t.text :comentario
      t.date :fecha
      t.integer :tipo_id
    end
  end
end
