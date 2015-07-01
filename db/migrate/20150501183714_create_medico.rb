class CreateMedico < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nombre, :primer_ap, :segundo_ap, :email
    end
  end
end