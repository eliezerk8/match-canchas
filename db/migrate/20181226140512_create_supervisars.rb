class CreateSupervisars < ActiveRecord::Migration[5.2]
  def change
    drop_table :supervisars
    create_table :supervisars do |t|
      t.date
      t.timestamps
    end
    add_reference :supervisars, :user, foreign_key:true
    add_reference :supervisars, :estudiante, foreign_key:true
  end
end
