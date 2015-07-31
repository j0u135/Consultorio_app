class ModifyConsultsAddComentarioRemovesintomas < ActiveRecord::Migration
  def change
    add_column :consults, :comentario, :text
    remove_column :consults, :sintomas, :text
  end
end
