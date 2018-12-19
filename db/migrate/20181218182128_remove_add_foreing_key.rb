class RemoveAddForeingKey < ActiveRecord::Migration[5.2]
  def change
    remove_column :carreras, :facultadid
    add_reference :carreras, :facultad, foreign_key:true
  end
end
