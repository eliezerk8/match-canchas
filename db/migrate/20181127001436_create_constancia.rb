class CreateConstancia < ActiveRecord::Migration[5.2]
  def change
    create_table :constancia do |t|
      t.integer :id_Profesional
      t.date :fecha
      t.text :objetivo
      t.float :id_nota
      t.text :observacion
      t.float :prom1
      t.float :prom2
      t.float :prom3

      t.timestamps
    end
  end
end
