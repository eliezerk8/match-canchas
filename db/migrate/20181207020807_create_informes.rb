class CreateInformes < ActiveRecord::Migration[5.2]
  def change
    create_table :informes do |t|
      t.integer :estudianteid
      t.integer :usuarioid
      t.integer :nota1
      t.integer :nota2
      t.integer :nota3
      t.integer :nota4
      t.integer :nota5
      t.decimal :promhabitos
      t.integer :nota6
      t.integer :nota7
      t.integer :nota8
      t.integer :nota9
      t.integer :nota10
      t.decimal :promvocacion
      t.integer :nota11
      t.integer :nota12
      t.integer :nota13
      t.integer :nota14
      t.integer :nota15
      t.decimal :promsalud
      t.string :observacion

      t.timestamps
    end
  end
end
