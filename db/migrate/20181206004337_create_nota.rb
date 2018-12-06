class CreateNota < ActiveRecord::Migration[5.2]
  def change
    create_table :nota do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
