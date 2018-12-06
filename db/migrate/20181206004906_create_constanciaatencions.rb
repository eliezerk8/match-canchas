class CreateConstanciaatencions < ActiveRecord::Migration[5.2]
  def change
    create_table :constanciaatencions do |t|
      t.integer :profesionalid
      t.integer :estudianteid
      t.date :fechacontacto
      t.text :intervencion
      t.text :objetivo
      t.integer :noraid
      t.text :observaciones

      t.timestamps
    end
  end
end
