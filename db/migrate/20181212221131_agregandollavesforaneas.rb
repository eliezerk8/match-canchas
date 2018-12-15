class Agregandollavesforaneas < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :estudiantes, :users, column: :usuarioid, primary_key: :id
  end
end
