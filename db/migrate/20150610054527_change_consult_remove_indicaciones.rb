class ChangeConsultRemoveIndicaciones < ActiveRecord::Migration
  def change
    remove_column :consults, :indicaciones, :text
  end
end
