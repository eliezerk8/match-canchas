class AddReferences < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key  :users,:facultads, column: :facultad_id, primary_key: :id
    add_foreign_key  :users,:rols, column: :rol_id, primary_key: :id
  end
end
