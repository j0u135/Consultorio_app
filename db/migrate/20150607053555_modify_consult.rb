class ModifyConsults < ActiveRecord::Migration
  
  def up
    add_column :consults, :comentario, :text
    remove_column :consults, :sintomas, :text
  end
end
