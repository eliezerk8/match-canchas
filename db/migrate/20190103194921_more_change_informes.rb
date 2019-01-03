class MoreChangeInformes < ActiveRecord::Migration[5.2]
  def change
    change_column :informes, :nota2, :float
    change_column :informes, :nota3, :float
    change_column :informes, :nota4, :float
    change_column :informes, :nota5, :float
    change_column :informes, :promhabitos, :float

    change_column :informes, :nota6, :float
    change_column :informes, :nota7, :float
    change_column :informes, :nota8, :float
    change_column :informes, :nota9, :float
    change_column :informes, :nota10, :float
    change_column :informes, :promvocacion, :float

    change_column :informes, :nota11, :float
    change_column :informes, :nota12, :float
    change_column :informes, :nota13, :float
    change_column :informes, :nota14, :float
    change_column :informes, :nota15, :float
    change_column :informes, :promsalud, :float
    



  end
end
