class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :nombreestudiante
      t.decimal :nem
      t.string :situacioneconomica
      t.string :colegio
      t.decimal :ranking
      t.integer :usuarioid

      t.timestamps
    end
  end
end
