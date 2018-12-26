class CreateSupervisar < ActiveRecord::Migration[5.2]
  def change
    remove_column :estudiantes, :user_id
    create_table :supervisars do |t|
      t.date
      t.timestamp
    end
    add_reference :supervisars, :user, foreign_key:true
    add_reference :supervisars, :estudiante, foreign_key:true

  end
end
