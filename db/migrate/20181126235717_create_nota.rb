class CreateNota < ActiveRecord::Migration[5.2]
  def change
    create_table :nota do |t|
      t.integer :ID_nota
      t.text :descripcion
      t.decimal :prom

      t.timestamps
    end
  end
end
