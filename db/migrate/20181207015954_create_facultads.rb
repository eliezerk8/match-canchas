class CreateFacultads < ActiveRecord::Migration[5.2]
  def change
    create_table :facultads do |t|
      t.string :nombrefacultad

      t.timestamps
    end
  end
end
