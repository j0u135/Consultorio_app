class CreateIndicacion < ActiveRecord::Migration
  def change
    create_table :indicacions do |t|
      t.integer :consult_id
      t.string :indicacion
      t.timestamps
    end
  end
end
