class CreateAppointment < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :fecha
      t.time :hora
      t.timestamps
      t.integer :calendario_id
    end
  end
end
