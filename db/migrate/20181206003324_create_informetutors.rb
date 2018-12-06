class CreateInformetutors < ActiveRecord::Migration[5.2]
  def change
    create_table :informetutors do |t|
      t.integer :estudianteid
      t.date :fecha
      t.integer :notaid
      t.text :objetivo
      t.text :observaciones

      t.timestamps
    end
  end
end
