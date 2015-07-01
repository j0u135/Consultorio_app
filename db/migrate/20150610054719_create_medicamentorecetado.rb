class CreateMedicamentorecetado < ActiveRecord::Migration
  def change
    create_table :medicamentorecetados do |t|
      t.integer :consult_id
      t.string :medicamento, :dosis
      t.timestamps
    end
  end
end
