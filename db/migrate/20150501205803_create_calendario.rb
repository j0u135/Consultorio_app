class CreateCalendario < ActiveRecord::Migration
  def change
    create_table :calendarios do |t|
      t.integer :medico_id, :cita_id
    end
  end
end
