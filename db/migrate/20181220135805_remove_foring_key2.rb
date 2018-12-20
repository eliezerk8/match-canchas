class RemoveForingKey2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :estudiantes, :usuarioid
    add_reference :estudiantes, :user, foreign_key:true
  end
end
