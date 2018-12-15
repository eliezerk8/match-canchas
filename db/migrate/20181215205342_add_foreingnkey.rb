class AddForeingnkey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :carreras, :facultads, column: :facultadid, primary_key: :id
  end
end
