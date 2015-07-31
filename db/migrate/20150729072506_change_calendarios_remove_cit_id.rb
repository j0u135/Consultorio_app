class ChangeCalendariosRemoveCitId < ActiveRecord::Migration
  def change
	remove_column :calendarios, :cita_id, :integer
  end
end
