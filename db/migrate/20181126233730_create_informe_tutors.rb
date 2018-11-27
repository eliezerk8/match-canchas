class CreateInformeTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :informe_tutors do |t|
      t.integer :estudiante_ID
      t.date :fecha
      t.integer :nota_ID
      t.text :objetivo
      t.text :observaciones

      t.timestamps
    end
  end
end
