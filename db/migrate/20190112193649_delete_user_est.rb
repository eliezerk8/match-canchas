class DeleteUserEst < ActiveRecord::Migration[5.2]
  def change
    drop_table :estudiantes_users
    add_reference :estudiantes, :users, foreign_key:true
  end
end
