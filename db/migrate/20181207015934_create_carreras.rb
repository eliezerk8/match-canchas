class CreateCarreras < ActiveRecord::Migration[5.2]
  def change
    create_table :carreras do |t|
      t.string :nombrecarrera
      t.string :codigo
      t.integer :facultadid

      t.timestamps
    end
  end
end
